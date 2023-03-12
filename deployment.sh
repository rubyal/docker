#!bash/bin
export CONTAINER=$(docker ps -a | awk '{print $1}' | tail -n 1)
docker rm --force $CONTAINER
docker rmi ruby
docker build -t ruby ./
docker run -d --name ruby-container -p 80:80 ruby
export CONTAINER2=$(docker ps | awk '{print $1}' | tail -n 1)
docker logs $CONTAINER2