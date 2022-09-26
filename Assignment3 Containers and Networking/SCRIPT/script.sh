# use dockerfile to build each, cd to directory of each folder
docker build -t my-grep .
docker build -t my-cat .
# customized bridge network
docker network create -d bridge cat-grep-net
# run cat container
docker run -dit --rm --name cat1 --network cat-grep-net -p 8080:80 my-cat
docker exec -it cat1 bash 
cat catfile > index.html
# run grep container
docker run -it --rm --name grep1 --network cat-grep-net -p 7070:80 my-grep
wget -qO- 172.18.0.2 | grep 12345

# ping cat1 from grep1
ping cat1
# ping grep1 from cat1
ping grep1
