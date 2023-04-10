git clone https://github.com/eventuate-tram/eventuate-tram-examples-customers-and-orders.git
sudo apt update
sudo apt install openjdk-8-jdk
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
echo $JAVA_HOME
sudo apt-get install     ca-certificates     curl     gnupg     lsb-release
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod 777 /var/run/docker.sock
docker-compose --version
cd eventuate-tram-examples-customers-and-orders/
./gradlew assemble
./gradlew mysqlbinlogComposeBuild mysqlbinlogComposeUp --stacktrace
# init docker after reboot
# ./gradlew mysqlbinlogComposeUp