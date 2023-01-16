#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
function_logo_flex(){
echo "  ___ _         _ _    _ _ _ _          ___ ___ _     "
    echo " | __| |_____ _(_) |__(_) (_) |_ _  _  / __| _ \ |    "
    echo " | _|| / -_) \ / | '_ \ | | |  _| || | \__ \   / |__  "
    echo " |_| |_\___/_\_\_|_.__/_|_|_|\__|\_, | |___/_|_\____| "
    echo "                                 |__/                 "
}

function_logo_flex

echo  "******************************************************************************************************************************"
echo  "------------------------------------------------Installer local enviroment QA-------------------------------------------------"
echo  "******************************************************************************************************************************"


echo  "******************************************************************************************************************************"
echo  "------------------------------------------------Intalling prerequisites-------------------------------------------------------"
echo  "******************************************************************************************************************************"


# install GIT
echo  "Validating GIT"
# Validate if you have it installed GIT

if ! command -v git --version 2> /dev/null; then
	_git_Install=0
	echo  "GIT is not installed and needs to be installed"

else
	_git_Install=1
	echo  "Git is installed"
fi

if [ $_git_Install -eq 0 ]; then
	cd $HOME
	echo  "Installing GIT"
	sudo apt-get install git
fi


# install Guake
echo  "Validating Guake"
# Validate if you have it installed Guake

if ! command -v guake --version 2> /dev/null; then
        _guake_Install=0
        echo  "Guake is not installed and needs to be installed"

else
        _guake_Install=1
        echo  "Guake is installed"
fi

if [ $_guake_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing Guake"
        sudo apt-get install guake -y
fi

# install maven
echo  "validating  maven"
# Validate if you have it installed maven

if ! command -v mvn -version 1> /dev/null; then
        _maven_Install=0
        echo  "Maven is not installed and needs to be installed"

else
        _maven_Install=1
        echo  "Maven is installed"
fi

if [ $_maven_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing Maven"
        sudo apt-get install maven
fi

# install gradle
echo  "Validating gradle"
# Validate if you have it installed maven

if ! command -v gradle --version 1> /dev/null; then
        _gradle_Install=0
        echo  "Gradle is not installed and needs to be installed"

else
        _gradle_Install=1
        echo  "Gradle is installed"
fi

if [ $_gradle_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing Gradle"
        sudo apt-get install gradle
fi

# install mysql-client
echo  "Validating mysql-client"
# Validate if you have it installed mysql-client

if ! command -v mysql --version 2> /dev/null; then
        _mysql_Install=0
        echo  "mysql is not installed and needs to be installed"

else
        _mysql_Install=1
        echo  "mysql is installed"
fi

if [ $_mysql_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing mysql"
        sudo apt-get install mysql-client
fi

# install htop
echo  "Validating htop"
# Validate if you have it installed htop

if ! command -v htop --version 2> /dev/null; then
        _htop_Install=0
        echo  "htop is not installed and needs to be installed"

else
        _htop_Install=1
        echo  "htop is installed"
fi

if [ $_htop_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing htop"
        sudo apt-get install htop
fi

# install filezilla
echo  "Validating filezilla"
# Validate if you have it installed filezilla

if ! command -v filezilla --version 2> /dev/null; then
        _file_Install=0
        echo  "filezilla is not installed and needs to be installed"

else
        _file_Install=1
        echo  "filezilla is installed"
fi

if [ $_file_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing filezilla"
        sudo apt-get install filezilla
fi

# install redis
echo  "Validating redis"
# Validate if you have it installed redis

if ! command -v redis-cli --version 2> /dev/null; then
        _redis_Install=0
        echo  "redis is not installed and needs to be installed"

else
        _redis_Install=1
        echo  "redis is installed"
fi

if [ $_redis_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing redis"
        sudo apt-get install redis-tools
fi

# Install Docker
echo  "Validating Docker"
# Validate if you have it installed Docker

if ! command -v docker --version 2> /dev/null; then
        _docker_Install=0
        echo  "Docker is not installed and needs to be installed"

else
        _docker_Install=1
        echo  "Docker is installed"
fi

if [ $_docker_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing Docker"
	sudo usermod -a -G docker $USER
        sudo apt update
   	 sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
    	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    	sudo apt update
    	sudo apt-cache policy docker-ce
    	sudo apt install docker-ce -y		
fi


# Install Docker Compose
echo  "Validating Docker Compose"
# Validate if you have it installed Docker Compose

if ! command -v docker-compose --version 2> /dev/null; then
        _dockercompose_Install=0
        echo  "Docker compose is not installed and needs to be installed"

else
        _dockercompose_Install=1
        echo  "Docker compose is installed"
fi

if [ $_dockercompose_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing Docker compose"
	sudo curl -L https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    	sudo chmod +x /usr/local/bin/docker-compose
fi

# Install AWS CLI
echo  "Validating AWS CLI"
# Validate if you have it installed Docker Compose

if ! command -v aws --version 2> /dev/null; then
        _aws_Install=0
        echo  "Aws cli is not installed and needs to be installed"

else
        _aws_Install=1
        echo  "Aws Cli is installed"
fi

if [ $_aws_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing aws cli"
        curl "https://awscli.amazonaws.com/awsclixe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscliv2.zip
	sudo ./aws/install
	aws configure 
	
fi

# Install Java

#Validation
echo "Validating Java"
if ! command -v java -version 2> /dev/null; then
        _java_Install=0
        echo  "Java is not installed and needs to be installed"

else
        _java_Install=1
        echo  "Java is installed"
fi
#Install Java 8
if [ $_java_Install -eq 0 ] ; then
    cd $HOME
    sudo add-apt-repository ppa:openjdk-r/ppa -y
    sudo apt-get update
    sudo apt install openjdk-8-jdk -y
fi

# Install Liquibase
echo "Validating Liquibase"
# Validate if you have it installed liquibase

if ! command -v liquibase --version 1> /dev/null; then
        _liquibase_Install=0
        echo  "Liquibase is not installed and needs to be installed"

else
        _liquibase_Install=1
        echo  "Liquibase is installed"
fi

if [ $_liquibase_Install -eq 0 ]; then
	cd $HOME
        echo  "Installing liquibase"
	sudo snap install liquibase
fi

echo  "******************************************************************************************************************************"
echo  "------------------------------------------------AWS configure-----------------------------------------------------------------"
echo  "******************************************************************************************************************************"
<< 'Comment'
flex_security="[flex-security]"
profile="[profile flex-shared]"
role_arn="arn:aws:iam::283907186399:role/QAs"
AWS_HOME="/.aws"


#Validating if aws folder exist.
if [ -d $AWS_HOME ] 
then
	echo  "*********************************************************************"
	echo  "Directory $AWS_HOME exist"
	echo  "*********************************************************************${Color_Off}"
else
	mkdir .aws
	echo  "*********************************************************************"
	echo  "Error: Directory $AWS_HOME does not exists...."
	echo  "*********************************************************************${Color_Off}"
	exit
fi

#Creating file flex
cd $AWS_HOME
mkdir -p flex 
#Creating credentials file.
echo  "*********************************************************************"
echo  "Creating credentials file"
echo  "*********************************************************************"


cd $AWS_HOME/flex
echo  "*********************************************************************"
echo  "Enter the access key id"
echo  "*********************************************************************"
read  aws_access_key_id
echo  "*********************************************************************"
echo  "Enter the secret access key"
echo  "*********************************************************************"
read  aws_secret_access_key

printf "$flex_security\naws_access_key_id=$aws_access_key_id\naws_secret_access_key=$aws_secret_access_key\n" > credentials

#Validating credentials file.
FILE="$AWS_HOME/flex/credentials"
if [ -f "$FILE" ]; then
    echo  "*********************************************************************"
	echo  "Credentials file was created"
	echo  "*********************************************************************"
	cat $FILE
else 
	echo  "*********************************************************************"
	echo  "Credentials file was not created,please check the log."
	echo  "*********************************************************************"
	exit
fi

#Creating config file.
echo  "*********************************************************************"
echo  "Creating Config file"
echo  "*********************************************************************"


cd $AWS_HOME/flex
echo  "*********************************************************************"
echo  "Enter IDDELMFA aws"
echo  "*********************************************************************"
read IDDELMFA
echo  "*********************************************************************"
echo  "Enter Usuario aws"
echo  "*********************************************************************"
read USUARIO

printf "$profile\noutput= json\nregion= us-east-1\nrole_arn= $role_arn \nsource_profile= flex-security\nmfa_serial= arn:aws:iam::$IDDELMFA:mfa/$USUARIO\n\n[default]\nregion= us-east-1\noutput= json\n" > config

#Validating config file.
FILE="$AWS_HOME/flex/config"
if [ -f "$FILE" ]; then
    echo  "*********************************************************************"
	echo  "Config file was created"
	echo  "*********************************************************************"
	cat $FILE
else 
	echo  "*********************************************************************"
	echo  "Config file was not created,please check the log."
	echo  "*********************************************************************"
	exit
fi

Comment

echo  "******************************************************************************************************************************"
echo  "-----------------------------------------------Cloning repositories-----------------------------------------------------------------"
echo  "******************************************************************************************************************************"
cd $HOME
REPO_HOME="$HOME/Desktop"
PLUG_AUTOMATION="plug-automation"
PLUG_AUTOMATION_BASH_LIBRARY="plug-automation-bash-library"
PLUG_AUTOMATION_LIBRARY="plug-automation-library"
DEPLOYMENT_INIT_FILES="deployment-init-files"
MOCK_SERVICE_ARGENTINA="mock-services-argentina"
MOCK_SERVICE_COLOMBIA="mock-services-colombia"
QA_AUTOMATION_CHALLENGUE="qa-automation-challenge "


if [ -d $REPO_HOME ]; then
	echo "Directory Desktop exist"
else
	echo "Directory Desktop does not exist and proceeds to create"
	mkdir Desktop
	echo "Created directory"
fi
cd $REPO_HOME
mkdir -p code-flex

if [ -d $REPO_HOME/code-flex ]; then
        echo "Directory code-flex was created"
else 
        echo "Directory was not created, validate the log"
fi

echo "Cloning base repositories"
cd $HOME/Desktop/code-flex
echo "Validating repository $PLUG_AUTOMATION"
if [ -d $PLUG_AUTOMATION ]; then
	echo "The repository $PLUG_AUTOMATION already exists"
	cd $PLUG_AUTOMATION
	git pull
else
	echo "The repository $PLUG_AUTOMATION does not exist, proceed to clone it"
	git clone git@github.com:FlexibilitySRL/plug-automation.git
fi

echo "Validating repository $PLUG_AUTOMATION_BASH_LIBRARY"
cd $HOME/Desktop/code-flex
if [ -d $PLUG_AUTOMATION_BASH_LIBRARY ]; then
        echo "The repository $PLUG_AUTOMATION_BASH_LIBRARY already exists"
	cd $PLUG_AUTOMATION_BASH_LIBRARY
        git pull
else
        echo "The repository $PLUG_AUTOMATION_BASH_LIBRARY does not exist, proceed to clone it"
        git clone git@github.com:FlexibilitySRL/plug-automation-bash-library.git
fi

echo "Validating repository $PLUG_AUTOMATION_LIBRARY"
cd $HOME/Desktop/code-flex
if [ -d $PLUG_AUTOMATION_LIBRARY ]; then
        echo "The repository $PLUG_AUTOMATION_LIBRARY already exists"
        cd $PLUG_AUTOMATION_LIBRARY
        git pull
else
        echo "The repository $PLUG_AUTOMATION_LIBRARY does not exist, proceed to clone it"
        git clone git@github.com:FlexibilitySRL/plug-automation-library.git
fi

echo "Validating repository $DEPLOYMENT_INIT_FILES"
cd $HOME/Desktop/code-flex
if [ -d $DEPLOYMENT_INIT_FILES ]; then
        echo "The repository $DEPLOYMENT_INIT_FILES already exists"
        cd $DEPLOYMENT_INIT_FILES
        git pull
else
        echo "The repository $DEPLOYMENT_INIT_FILES does not exist, proceed to clone it"
        git clone git@github.com:FlexibilitySRL/deployment-init-files.git
fi

echo "Validating repository $MOCK_SERVICE_ARGENTINA"
cd $HOME/Desktop/code-flex
if [ -d $MOCK_SERVICE_ARGENTINA ]; then
        echo "The repository $MOCK_SERVICE_ARGENTINA already exists"
        cd $MOCK_SERVICE_ARGENTINA
        git pull
else
        echo "The repository $MOCK_SERVICE_ARGENTINA does not exist, proceed to clone it"
        git clone git@github.com:FlexibilitySRL/mock-services-argentina

fi

echo "Validating repository $MOCK_SERVICE_COLOMBIA"
cd $HOME/Desktop/code-flex
if [ -d $MOCK_SERVICE_COLOMBIA ]; then
        echo "The repository $MOCK_SERVICE_COLOMBIA already exists"
        cd $MOCK_SERVICE_ARGENTINA
        git pull
else
        echo "The repository $MOCK_SERVICE_COLOMBIA does not exist, proceed to clone it"
        git clone git@github.com:FlexibilitySRL/mock-services-colombia
fi
echo "Validating repository $QA_AUTOMATION_CHALLENGUE"
cd $HOME/Desktop/code-flex
if [ -d $QA_AUTOMATION_CHALLENGUE ]; then
        echo "The repository $QA_AUTOMATION_CHALLENGUE already exists"
        cd $QA_AUTOMATION_CHALLENGUE
        git pull
else
        echo "The repository $QA_AUTOMATION_CHALLENGUE does not exist, proceed to clone it"
        git clone git@github.com:FlexibilitySRL/qa-automation-challenge.git
fi
