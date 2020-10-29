# kafka

```
VERSION=2.4.0
sudo docker image rm kafka --force
sudo docker build -t  kafka . --build-arg kafka_version=${VERSION}
sudo docker tag kafka:latest timran1/kafka:latest-kafka-${VERSION}
sudo docker push timran1/kafka:latest-kafka-${VERSION}
```
