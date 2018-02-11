# echo "Changing password"
# sudo useradd client
# passwd -d -u client
# chage -d0 client
# echo "client:client" | sudo chpasswd

echo "Updating apt"
sudo apt-get -y update > /dev/null

echo "Installing JRE"
sudo apt-get -y install default-jre  > /dev/null

echo "Executing cliente.jar"
sudo java -jar /home/vagrant/cliente.jar &

echo "Vagrant finish installing"
echo "Installing Network Monitor Client"