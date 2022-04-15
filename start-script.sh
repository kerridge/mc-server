yum -y install git

firewall-cmd --add-port=25565/tcp --permanent

firewall-cmd --reload

docker-compose -f minecraft.yml up --detach vanilla

docker-compose -f minecraft.yml down mc-server_vanilla_1

docker logs --follow mc-server_vanilla_1


alias rcon='docker exec -i mc-server_"$1"_1 rcon-cli'
function logs {
    type logs
    docker logs -f mc-server_$1\_1
}
alias down='docker-compose -f minecraft.yml down'
alias up='docker-compose -f minecraft.yml up --detach'
alias mc='cd /home/mc-server/'
alias dcm='docker-compose -f minecraft.yml'