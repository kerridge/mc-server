yum -y install git

firewall-cmd --add-port=25565/tcp --permanent
firewall-cmd --add-port=25565/udp --permanent

firewall-cmd --reload

