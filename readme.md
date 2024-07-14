```
docker run -d \
-p 9000:9000 --name portainer \
--restart=always \
-v /var/run/docker.sock:/var/run/docker.sock \
portainer/portainer

docker run -d \
--name dozzle \
-v /var/run/docker.sock:/var/run/docker.sock \
-p 9001:8080 \
--restart always \
amir20/dozzle


docker run -u0 --rm -it \
-v ./filebeat.yml:/usr/share/filebeat/filebeat.yml:ro \
-v ./logs:/logs:ro \
docker.elastic.co/beats/filebeat:8.14.3 filebeat -e --strict.perms=false

docker run --rm -it \
-v ./gs-spring-boot/complete:/app \
-v ./logs:/logs \
-v ./logback-spring.xml:/app/src/main/resources/logback-spring.xml \
-p 8080:8080 \
gradle:8.3.0-jdk17 gradle -p /app bootRun
```