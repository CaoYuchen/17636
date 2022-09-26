### Version Information

* OS host: Windows 10 Pro, 21H1
* VM: Ubuntu 20.04.5 LTS
* Virtualizer: VMware Workstation Pro 16.1.2
* Docker: Docker Engine - Community 20.10.18

### Dockerfiles

* Dockerfile for cat container
  
  ```
  FROM httpd:2.4
  LABEL maintainer="yuchenca@andrew.cmu.edu"
  COPY ./catfile /usr/local/apache2/htdocs/
  RUN apt-get update && apt-get install -y iputils-ping
  ```
  
* Dockerfile for grep container
  ```
  FROM alpine:latest
  LABEL maintainer="yuchenca@andrew.cmu.edu"
  ```

### Command lines to recreate assignment

1. Install Docker, https://docs.docker.com/engine/install/ubuntu/ 

   ```
   sudo apt-get update
   sudo apt-get install \
       ca-certificates \
       curl \
       gnupg \
       lsb-release
   sudo mkdir -p /etc/apt/keyrings
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
   echo \
     "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   sudo apt-get update
   sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
   sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io docker-compose-plugin
   sudo service docker start
   ```

2. Use dockerfile to build each, cd to directory of each folder

   ```
   cd path/to/grep/
   docker build -t my-grep .
   cd path/to/cat/
   docker build -t my-cat .
   ```

3. Create a new bridge network

   ```
   docker network create -d bridge cat-grep-net
   ```

4. Run cat container

   * Note that the catfile is some file I customized, you can find it in attached files under /SCRIPT/cat/

   ```
   docker run -dit --rm --name cat1 --network cat-grep-net -p 8080:80 my-cat
   docker exec -it cat1 bash 
   cat catfile > index.html
   ```

5. Run grep container

   ```
   docker run -it --rm --name grep1 --network cat-grep-net -p 7070:80 my-grep
   ```

6. Ping each other

   ```
   # ping cat1 from grep1 container
   ping cat1
   # ping grep1 from cat1 container
   ping grep1
   ```

7. grep the message

   ```
   wget -qO- 172.18.0.2 | grep 12345
   ```

   

### Problems encountered and alternatives

* Problems: can't get apache container to work with cli 
  ```
  docker run -it --rm --name cat1 --network cat-grep-net -p 8080:80 my-cat
  ```
  Solutions: And I couldn't figure out the reason, after several tries, I realized it has to run as back-end program, so add d to it as 

  ```
  docker run -dit --rm --name cat1 --network cat-grep-net -p 8080:80 my-cat
  ```
  Then it works.
