### Version Information

* OS host: Windows 10 Pro, 21H1
* VM: Ubuntu 20.04.5 LTS
* Virtualizer: VMware Workstation Pro 16.1.2
* Dig: DiG 9.16.1-Ubuntu

### Dig Results

* Find the IP address of mse.isri.cmu.edu
  * 128.2.204.82

* Query the A, MX, and CNAME DNS records for mse.isri.cmu.edu
  * A: 

    ``` 
    ; <<>> DiG 9.16.1-Ubuntu <<>> mse.isri.cmu.edu A
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 45253
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1
    
    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 65494
    ;; QUESTION SECTION:
    ;mse.isri.cmu.edu.    IN  A
    
    ;; ANSWER SECTION:
    mse.isri.cmu.edu. 5 IN  CNAME isr-web2018.isri.cmu.edu.
    isr-web2018.isri.cmu.edu. 4 IN  A 128.2.204.82
    
    ;; Query time: 92 msec
    ;; SERVER: 127.0.0.53#53(127.0.0.53)
    ;; WHEN: Thu Sep 15 12:17:49 PDT 2022
    ;; MSG SIZE  rcvd: 87
    ```

  * MX: 

    ```
    ; <<>> DiG 9.16.1-Ubuntu <<>> mse.isri.cmu.edu MX
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 38996
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1
    
    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 65494
    ;; QUESTION SECTION:
    ;mse.isri.cmu.edu.    IN  MX
    
    ;; ANSWER SECTION:
    mse.isri.cmu.edu. 5 IN  CNAME isr-web2018.isri.cmu.edu.
    
    ;; Query time: 120 msec
    ;; SERVER: 127.0.0.53#53(127.0.0.53)
    ;; WHEN: Thu Sep 15 12:18:20 PDT 2022
    ;; MSG SIZE  rcvd: 71
    ```
  
  * CNAME
  
    ```
    ; <<>> DiG 9.16.1-Ubuntu <<>> mse.isri.cmu.edu CNAME
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 38164
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1
    
    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 65494
    ;; QUESTION SECTION:
    ;mse.isri.cmu.edu.    IN  CNAME
    
    ;; ANSWER SECTION:
    mse.isri.cmu.edu. 5 IN  CNAME isr-web2018.isri.cmu.edu.
    
    ;; Query time: 76 msec
    ;; SERVER: 127.0.0.53#53(127.0.0.53)
    ;; WHEN: Thu Sep 15 12:21:13 PDT 2022
    ;; MSG SIZE  rcvd: 71
    ```
  
* Look up and determine the TTL for each portion of the DNS hierarchy

  ```
  ; <<>> DiG 9.16.1-Ubuntu <<>> mse.isri.cmu.edu +trace +ttlunits
  ;; global options: +cmd
  .     5s  IN  NS  d.root-servers.net.
  .     5s  IN  NS  e.root-servers.net.
  .     5s  IN  NS  f.root-servers.net.
  .     5s  IN  NS  g.root-servers.net.
  .     5s  IN  NS  h.root-servers.net.
  .     5s  IN  NS  i.root-servers.net.
  .     5s  IN  NS  j.root-servers.net.
  .     5s  IN  NS  k.root-servers.net.
  .     5s  IN  NS  l.root-servers.net.
  .     5s  IN  NS  m.root-servers.net.
  .     5s  IN  NS  a.root-servers.net.
  .     5s  IN  NS  b.root-servers.net.
  .     5s  IN  NS  c.root-servers.net.
  ;; Received 262 bytes from 127.0.0.53#53(127.0.0.53) in 16 ms
  
  edu.      2d  IN  NS  b.edu-servers.net.
  edu.      2d  IN  NS  f.edu-servers.net.
  edu.      2d  IN  NS  i.edu-servers.net.
  edu.      2d  IN  NS  a.edu-servers.net.
  edu.      2d  IN  NS  g.edu-servers.net.
  edu.      2d  IN  NS  j.edu-servers.net.
  edu.      2d  IN  NS  k.edu-servers.net.
  edu.      2d  IN  NS  m.edu-servers.net.
  edu.      2d  IN  NS  l.edu-servers.net.
  edu.      2d  IN  NS  h.edu-servers.net.
  edu.      2d  IN  NS  c.edu-servers.net.
  edu.      2d  IN  NS  e.edu-servers.net.
  edu.      2d  IN  NS  d.edu-servers.net.
  edu.      1d  IN  DS  28065 8 2 4172496CDE85534E51129040355BD04B1FCFEBAE996DFDDE652006F6 F8B2CE76
  edu.      1d  IN  RRSIG DS 8 1 86400 20220928180000 20220915170000 20826 . Z1OnXLJQsVjAQ93iXySifFs3UapK/H6/H7RClZ2eaiqkxgYQR40yLE3w JuYAm3W0hY3At+8lcKADM56NwDdvw/N4NQ1wH9m0tD5VhtPSiZ13eQh5 PI6lomsAe0i07OKV6h/BkOYDFHOHgAC/NHLP7ic8n9+WQ24Dl5A+sVzw +Xx9e586q0scPUORf8CxDI8YxXY3z/9zH0zVW9WGfKNVIMgPzE0M8mxT wd57DyGU/Ws2NpnsyPvBKZMGW3kel8S3iRvtDz7fhXNDuL3VMuyJNZFk HKWRO1ionbbRgoPKEWYeM7GC3F4AClJAYWu09Mbd9aiF5vTFmLhCSWf/ ou9L3Q==
  ;; Received 1175 bytes from 198.41.0.4#53(a.root-servers.net) in 24 ms
  
  cmu.edu.    2d  IN  NS  ny-server-03.net.cmu.edu.
  cmu.edu.    2d  IN  NS  nsauth1.net.cmu.edu.
  cmu.edu.    2d  IN  NS  nsauth2.net.cmu.edu.
  cmu.edu.    1d  IN  DS  56259 7 1 585E955D36AB11A225E22B42E713C9BC8B0347B7
  cmu.edu.    1d  IN  DS  56259 7 2 83F3EA220349ECD74852847F838121275FF28F3C0806B853133BCEF6 1E1D8205
  cmu.edu.    1d  IN  RRSIG DS 8 2 86400 20220920062855 20220913051855 18290 edu. Zt8HpMYLpxyVZKs3pLeUp10Pm+st7vr7sJgx1QbK1hhVz3dBvsfTAC7y 1HpF8dCf0Pk4qJaH+gdRIodcQadroDy0W2dol5HA+jMxY/X29QLalbtp EzvxkDxzZpcnh+ILhvLH2qvr6XcXzDGpMosbnuMB8IehpzX7ouxl3pE2 DF1hSjbHAWrMSlhVIBgK3pf18/jyhJvrDSCbFNDfOZw3Vw==
  ;; Received 447 bytes from 192.12.94.30#53(e.edu-servers.net) in 20 ms
  
  isri.cmu.edu.   10m IN  NS  NSAUTH-IB2.NET.cmu.edu.
  isri.cmu.edu.   10m IN  NS  NSAUTH-IB1.NET.cmu.edu.
  isri.cmu.edu.   6h  IN  NSEC  ISTC-CC.CMU.EDU. NS RRSIG NSEC
  isri.cmu.edu.   6h  IN  RRSIG NSEC 7 3 21600 20221010145924 20220910143821 6947 cmu.edu. e8ZKKnJbWg1jxcEr3U37a9h9F6FmmKYHr/7PVo3wqSRol6/dZZoBZnp6 A37aGn29Il7RklQ8Zjh7gH9xkUDrF1qv/pC2AbiDvG1Bd8EOjKArXWqn mCPCVwA0kofeL1QBZWXCvJIt+fXK+WysS1+bfw/qbK2ZZxUbOJzrcnsd FHw=
  ;; Received 335 bytes from 128.237.148.168#53(nsauth2.net.cmu.edu) in 24 ms
  
  mse.isri.cmu.edu. 5m  IN  CNAME isr-web2018.isri.cmu.edu.
  isr-web2018.isri.cmu.edu. 5m  IN  A 128.2.204.82
  ;; Received 115 bytes from 128.237.148.161#53(NSAUTH-IB2.NET.cmu.edu) in 24 ms

* Perform a reverse DNS lookup of the IPv4 address 8.8.8.8

  dns.google

### Capturing the working session containing the record queries

* ``` sudo apt-get install dnsutils ``` to install Dig toolsets
* In VM Station, VM->Settings->Network Adapter->NAT, and then type ```ping www.google.com```, if there is response, the network is connected
* ``` dig mse.isri.cmu.edu +short``` to get IP record from DNS server
* ```dig -x 8.8.8.8``` to get reverse record from an IP to its hostname

### Problems encountered and alternatives

* Problems: Dig exports TTL numbers that are uncertain of its units

  Solutions: add +ttlunits to get a human readable output
