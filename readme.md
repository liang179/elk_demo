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
```