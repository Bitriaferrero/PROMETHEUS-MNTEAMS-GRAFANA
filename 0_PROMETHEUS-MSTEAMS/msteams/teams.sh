docker run -d -p 2000:2000 \
    --name="promteams" \
    -v /tmp/config.yml:/tmp/config.yml \
    -e CONFIG_FILE="/tmp/config.yml" \
    -e PROMTEAMS_DEBUG="true" \
    docker.io/bzon/prometheus-msteams:latest
