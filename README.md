# PROMETHEUS-MNTEAMS-GRAFANA
DOCKER COMPOSE: DESPLIEGE DE PROMETHEUS, ALERTMANAGER,MNTEAMS,GRAFANA

He ido juntando diferentes contenedores y configurando para que funcione conjuntamente
estos 4 contenedores.



MSTEAMS: PARA RECIBIR ALERTAS POR CANAL DE MSTEAMS
Editar el fickero docker-compose.yml y descomentar la linea #- TEAMS_INCOMING_WEBHOOK_URL=  y agregar el WEBHOOCK 

prometheus-msteams:
    image: docker.io/bzon/prometheus-msteams:latest
    container_name: prometheus-msteams
    restart: unless-stopped
    environment:

        #- TEAMS_INCOMING_WEBHOOK_URL= DESCOMENTAR ESTA LINEA Y COLOCAR AQUI WEBHOOCK DE MSTEAMS 
        #- TEMPLATE-FILE=./msteams/card.tmpl
        - TEAMS_REQUEST_URI=alertmanager


GRAFANA:
Usuario de grafana y password iniciales :admin/admin
Ver 1.0
