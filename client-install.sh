# echo "Changing password"
# passwd -d -u client
# chage -d0 client
# echo "client:client" | sudo chpasswd

echo "Updating apt"
sudo apt -y update > /dev/null

echo "Installing JRE"
sudo apt -y install default-jre  > /dev/null

echo "Executing cliente.jar"
sudo java -jar cliente.jar

echo "Vagrant finish installing"
echo "Installing Network Monitor Client"