# Dependence 
sudo apt install curl unzip -y

# Download the AWSCLI zip file
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#Unzip the awscli file
sudo unzip awscliv2.zip
#install the AWSCLI  
sudo ./aws/install --update
