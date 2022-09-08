# Steps:

### Install Hypervisor, Download iso file

* Install VMware Work Station Pro 16 from https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html
* Download Ubuntu 20.04 newest version from https://releases.ubuntu.com/focal/

### Check SHA256SUMS checksum

* Download file SHA256SUMS and SHA256SUMS.gpg from the same webPage
* Open PowerShell on Windows(my laptop OS version), install WSL by
  * ```wsl -- install```
  * Open Microsoft Store, choose any Ubuntu to get, install
  * Restart computer
* Open Powershell, type ```bash``` , then ```cd toyourpath/ubuntu.iso```
* ```sha256sum ubuntu.iso```
* Move the SHA256SUMS under the same folder of .iso, run ```sha256sum -c SHA256SUMS```
* If it shows "OK", meaning that checksum is correct.

### Install Virtual Machine

* Open VMware Workstation, File->New Virtual Machine
* Custom(advanced)->Next->Install disc image file, choose your iso, customize your prefered cores of CPU, user name, etc.
* Install, boom!



# Versions

### Host operation system and version:

* Windows 10 Pro, 21H1

### Version of software used to verify the checksum:

* sha256sum (GNU coreutils) 8.30

### Software and version used for virtualization: 

* VMware Workstation Pro 16.1.2

### Text capture of the checksum verification:

* ```sha256sum ubuntu-20.04.5-desktop-amd64.iso``` gets  ```2980570ea889€3467a04df15c8421ef1dc80ecef7bb37243da97f5714cf3f8ef ubuntu-20.04.5-desktop-amd64.iso```
* ```sha256sum-c SHA256SUMS``` gets ```ubuntu-20.04.5-desktop-amd64.is: OK```

### Detail of hypervisor, reason, problems encountered, alternatives

* Hypervisor: VMware Workstation Pro, a type 2 hosted hypervisor.
* Reason: I have installed the VMware on my PC(Windows) before, I'm familiar with it, it's one of the best type-2 hypervisor nowadays.
* Issues: I tried to verify the sha256sum inside the Virtual Machine, instead of using subsystem for Linux on Windows to do the job, the Virtual Machine can't connect to network. I double checked all the Net Adaptors, Net services, and Network setting inside the VM, the issue just can't be solved. In the end, I remove the VM instance and reinstalled it again, using the exactly same setting, and then it works.
  * I didn't figure out the reason behind, but I guess it's some IP issue caused by multiple Virtual Machines using the NAT to use my host-machine's WLAN.(I could be wrong)