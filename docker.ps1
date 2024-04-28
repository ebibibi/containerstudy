docker stop $(docker ps -q)
docker rm $(docker ps -q -a)
docker rmi $(docker images -q)

docker images
docker pull httpd
docker image history httpd
docker image inspect httpd

docker ps -a

docker run --name httpdrun -dit httpd bash
docker ps -a
$dockerid = $(docker ps -a -q --filter "name=httpdrun")
docker attach $dockerid
docker start $dockerid
docker stop $dockerid
docker rm $dockerid

docker ps -a
docker images
docker rmi httpd
docker images