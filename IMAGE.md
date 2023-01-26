docker-compose build

docker buildx build --platform=linux/amd64 --tag=docker-tensorflow22:latest --load .

docker tag docker-tensorflow22:latest pjabadesco/docker-tensorflow22:0.05
docker push pjabadesco/docker-tensorflow22:0.05

docker tag pjabadesco/docker-tensorflow22:0.05 pjabadesco/tensorflow22:latest
docker push pjabadesco/tensorflow22:latest

docker tag pjabadesco/tensorflow22:latest ghcr.io/pjabadesco/tensorflow22:latest
docker push ghcr.io/pjabadesco/tensorflow22:latest
