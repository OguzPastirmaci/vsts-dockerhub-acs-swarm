scp -P 2200 -i $1 docker-compose.yml $2:/home/azureuser
ssh -i $1 $2 -A -p 2200 'export DOCKER_HOST=10.0.0.5:2375; docker-compose up -d; docker-compose scale web=$3'

