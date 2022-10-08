### Version Information

* OS host: Windows 10 Pro, 21H1
* VM1: Ubuntu 20.04.5 LTS
* VM2: Ubuntu 20.04.5 LTS
* Virtualizer: VMware Workstation Pro 16.1.2

### SSH

* Create SSH Keys
   Public key:
  
  ```
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+YasvaU4wEKcSjVPse+ycTa0igkgdUeWpFpdylAZ/DTf7lXFWP+uXw1T4mAw57qkdWNLPYX97f9Z4QFwYOGhxcHRUxwFJ+sU2OGARn8gJHPJcuokf4JCBu5+gZRmKSSIKkhkTN9w3EraxD6OMKLtgIllA7kwrnVq6HQEnWTJnLbuLgXpeDHUZkAsxuNNbckSDZUeNPdWoj3QbuTnD11sjj14cxNkNaYEx7E/YlMmpL78Og3v4ROAM/D3flI8ojHQCtyTkg5M5Wa326EkAXmY517O5s7jfz4CAOvbOi4ojvvw/j1dRKcDhqDs4heqCLBqqn3iitdTtGE6fIXw4X3lK7E4bZCBJ3fi3eXU3THp7ydwYE1R2NIBHS/cPoS2QfEkW4kGjcvxEBkDbT701oesJXVxD8PmLJF9d6cACPVfhR4ywOJitY5fSSbs5BrS35d0dT0t5KHWk6O+skmd5su2aqldytq4A1Ipye//HyUnLM0ozAOAtASAvB5NnJQIwmSs= ads2@ubuntu
  ```
  Private Key:
    ```
  -----BEGIN OPENSSH PRIVATE KEY-----
  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
  GH/ntICPh4+40AAAALYWRzMkB1YnVudHU=
  -----END OPENSSH PRIVATE KEY-----
  
    ```
  
* Configure SSH server
  ```
  FROM alpine:latest
  LABEL maintainer="yuchenca@andrew.cmu.edu"
  ```

* sshd_config
  ```
  #   $OpenBSD: sshd_config,v 1.103 2018/04/09 20:41:22 tj Exp $
  
  # This is the sshd server system-wide configuration file.  See
  # sshd_config(5) for more information.
  
  # This sshd was compiled with PATH=/usr/bin:/bin:/usr/sbin:/sbin
  
  # The strategy used for options in the default sshd_config shipped with
  # OpenSSH is to specify options with their default value where
  # possible, but leave them commented.  Uncommented options override the
  # default value.
  
  Include /etc/ssh/sshd_config.d/*.conf
  
  #Port 22
  #AddressFamily any
  #ListenAddress 0.0.0.0
  #ListenAddress ::
  
  #HostKey /etc/ssh/ssh_host_rsa_key
  #HostKey /etc/ssh/ssh_host_ecdsa_key
  #HostKey /etc/ssh/ssh_host_ed25519_key
  
  # Ciphers and keying
  #RekeyLimit default none
  
  # Logging
  #SyslogFacility AUTH
  #LogLevel INFO
  
  # Authentication:
  
  #LoginGraceTime 2m
  #PermitRootLogin prohibit-password
  #StrictModes yes
  #MaxAuthTries 6
  #MaxSessions 10
  
  #PubkeyAuthentication yes
  
  # Expect .ssh/authorized_keys2 to be disregarded by default in future.
  #AuthorizedKeysFile  .ssh/authorized_keys .ssh/authorized_keys2
  
  #AuthorizedPrincipalsFile none
  
  #AuthorizedKeysCommand none
  #AuthorizedKeysCommandUser nobody
  
  # For this to work you will also need host keys in /etc/ssh/ssh_known_hosts
  #HostbasedAuthentication no
  # Change to yes if you don't trust ~/.ssh/known_hosts for
  # HostbasedAuthentication
  #IgnoreUserKnownHosts no
  # Don't read the user's ~/.rhosts and ~/.shosts files
  #IgnoreRhosts yes
  
  # To disable tunneled clear text passwords, change to no here!
  #PasswordAuthentication yes
  #PermitEmptyPasswords no
  
  # Change to yes to enable challenge-response passwords (beware issues with
  # some PAM modules and threads)
  ChallengeResponseAuthentication no
  
  # Kerberos options
  #KerberosAuthentication no
  #KerberosOrLocalPasswd yes
  #KerberosTicketCleanup yes
  #KerberosGetAFSToken no
  
  # GSSAPI options
  #GSSAPIAuthentication no
  #GSSAPICleanupCredentials yes
  #GSSAPIStrictAcceptorCheck yes
  #GSSAPIKeyExchange no
  
  # Set this to 'yes' to enable PAM authentication, account processing,
  # and session processing. If this is enabled, PAM authentication will
  # be allowed through the ChallengeResponseAuthentication and
  # PasswordAuthentication.  Depending on your PAM configuration,
  # PAM authentication via ChallengeResponseAuthentication may bypass
  # the setting of "PermitRootLogin without-password".
  # If you just want the PAM account and session checks to run without
  # PAM authentication, then enable this but set PasswordAuthentication
  # and ChallengeResponseAuthentication to 'no'.
  UsePAM yes
  
  #AllowAgentForwarding yes
  #AllowTcpForwarding yes
  #GatewayPorts no
  X11Forwarding yes
  #X11DisplayOffset 10
  #X11UseLocalhost yes
  #PermitTTY yes
  PrintMotd no
  #PrintLastLog yes
  #TCPKeepAlive yes
  #PermitUserEnvironment no
  #Compression delayed
  ClientAliveInterval 120
  #ClientAliveCountMax 3
  #UseDNS no
  #PidFile /var/run/sshd.pid
  #MaxStartups 10:30:100
  #PermitTunnel no
  #ChrootDirectory none
  #VersionAddendum none
  
  # no default banner path
  Banner /etc/ssh/banner
  
  # Allow client to pass locale environment variables
  AcceptEnv LANG LC_*
  
  # override default of no subsystems
  Subsystem   sftp  /usr/lib/openssh/sftp-server
  
  # Example of overriding settings on a per-user basis
  #Match User anoncvs
  #  X11Forwarding no
  #  AllowTcpForwarding no
  #  PermitTTY no
  #  ForceCommand cvs server
  
  ```
### Command lines to recreate assignment

1. On the server side. 
   * First use command below to set up openssh server and start the ssh server service

  ```
   sudo apt-get install openssh-server
   sudo systemctl enable ssh
   sudo systemctl start ssh
  ```
   * Then use vim to edit the sshd_config file 
   ```
   sudo vim /etc/ssh/sshd_config
   ```
   * Add content below to add Client Alive and Login Banner
   ```
   ClientAliveInterval 120
   Banner /etc/ssh/banner
   ```
   * Chnage files below to edit blacklist and whitelist
   ```
   sudo vim /etc/hosts.deny
   sudo vim /etc/hosts.allow
   ```

2. On the client side.
   * Use command to create public-private key pair, press Enter if necessary
   * Use cat command to check the key

   ```
   ssh-keygen
   cd ~/.ssh/
   cat id_rsa
   cat id_rsa.pub
   ```
   * Upload public key to server, you need to input the password for this step

   ```
   ssh-copy-id username@ip
   ```
   * Login server via ssh

   ```
   ssh username@ip
   ```

3. Create file and test on the server

   ```
   touch created.txt
   ls -la
   exit
   ```
   

### Problems encountered and alternatives

* Problems: When I set up hosts.deny with sshd: ALL, and hosts.allow with ip/CIDA for the client, and when I restart the client, the IP of client changes, so that I can't ssh login anymore

  Solutions: Assign static IP to the client VM

