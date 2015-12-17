chmod 400 ssh-cert
scp -P 2200 -i ssh-cert docker-compose.yml azureuser@oguzp-acs3mgmt.japaneast.cloudapp.azure.com:/home/azureuser
ssh -i ssh-cert azureuser@oguzp-acs3mgmt.japaneast.cloudapp.azure.com  -A -p 2200 'export DOCKER_HOST=10.0.0.5:2375; docker-compose up -d; docker-compose scale web=$3'

