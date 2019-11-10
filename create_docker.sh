#!/bin/bash
read -p "Create Container Name  : " C_NAME
echo "Container Name: ${C_NAME}"

sudo docker run -p 8080:22 \
				 --name $C_NAME \
				 -dt "my_mongodb"

sudo docker exec -ti $C_NAME sh -c "service ssh start"