docker run -u0 --rm -it \
-v ./filebeat.yml:/usr/share/filebeat/filebeat.yml:ro \
-v ./logs:/logs:ro \
docker.elastic.co/beats/filebeat:8.14.3 filebeat -e --strict.perms=false