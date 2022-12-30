docker-compose build

docker buildx build --platform=linux/amd64 --tag=docker-tensorflow22:latest --load .

docker tag docker-tensorflow22:latest pjabadesco/tensorflow22:0.10
docker push pjabadesco/tensorflow22:0.10

docker tag pjabadesco/tensorflow22:0.10 pjabadesco/tensorflow22:latest
docker push pjabadesco/tensorflow22:latest

docker tag pjabadesco/tensorflow22:latest ghcr.io/pjabadesco/tensorflow22:latest
docker push ghcr.io/pjabadesco/tensorflow22:latest
