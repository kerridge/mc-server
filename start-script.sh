yum -y install git

firewall-cmd --add-port=25565/tcp --permanent

firewall-cmd --reload

docker-compose -f minecraft.yml up --detach vanilla

docker-compose -f minecraft.yml down mc-server_vanilla_1

docker logs --follow mc-server_vanilla_1
