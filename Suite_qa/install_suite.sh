#!/bin/bash

function_logo_flex(){
echo "  ___ _         _ _    _ _ _ _          ___ ___ _     "
    echo " | __| |_____ _(_) |__(_) (_) |_ _  _  / __| _ \ |    "
    echo " | _|| / -_) \ / | '_ \ | | |  _| || | \__ \   / |__  "
    echo " |_| |_\___/_\_\_|_.__/_|_|_|\__|\_, | |___/_|_\____| "
    echo "                                 |__/                 "
}

function_logo_flex

echo -e "******************************************************************************************************************************"
echo -e "------------------------------------------------Installer local enviroment QA-------------------------------------------------"
echo -e "******************************************************************************************************************************"


echo -e "******************************************************************************************************************************"
echo -e "------------------------------------------------Intalling prerequisites-------------------------------------------------------"
echo -e "******************************************************************************************************************************"


# install GIT
echo -e "Installing GIT"
# Validate if you have it installed GIT

if ! command -v git --version &> /dev/null; then
	_git_Install=0
	echo -e "GIT is not installed and needs to be installed"

else
	_git_Install=1
	echo -e "Git is installed"
fi

if [$_git_Install -eq 0]; then
	echo -e "Installing GIT"
	sudo apt-get install git
fi


# install Guake
echo -e "InstallingGuake"
# Validate if you have it installed Guake

if ! command -v guake --version &> /dev/null; then
        _guake_Install=0
        echo -e "Guake is not installed and needs to be installed"

else
        _guake_Install=1
        echo -e "Guake is installed"
fi

if [$_git_Install -eq 0]; then
        echo -e "Installing Guake"
        sudo apt-get install guake -y
fi

# install maven
echo -e "Installing maven"
# Validate if you have it installed maven

if ! command -v mvn -version &> /dev/null; then
        _maven_Install=0
        echo -e "Maven is not installed and needs to be installed"

else
        _maven_Install=1
        echo -e "Maven is installed"
fi

if [$_maven_Install -eq 0]; then
        echo -e "Installing Maven"
        sudo apt-get install maven
fi

# install gradle
echo -e "Installing gradle"
# Validate if you have it installed maven

if ! command -v gradle --version &> /dev/null; then
        _gradle_Install=0
        echo -e "Gradle is not installed and needs to be installed"

else
        _gradle_Install=1
        echo -e "Gradle is installed"
fi

if [$_gradle_Install -eq 0]; then
        echo -e "Installing Gradle"
        sudo apt-get install gradle
fi

# install mysql-client
echo -e "Installing mysql-client"
# Validate if you have it installed mysql-client

if ! command -v mysql --version &> /dev/null; then
        _mysql_Install=0
        echo -e "mysql is not installed and needs to be installed"

else
        _mysql_Install=1
        echo -e "mysql is installed"
fi

if [$_mysql_Install -eq 0]; then
        echo -e "Installing mysql"
        sudo apt-get install mysql-client
fi

# install htop
echo -e "Installing htop"
# Validate if you have it installed htop

if ! command -v htop --version &> /dev/null; then
        _htop_Install=0
        echo -e "htop is not installed and needs to be installed"

else
        _htop_Install=1
        echo -e "htop is installed"
fi

if [$_htop_Install -eq 0]; then
        echo -e "Installing htop"
        sudo apt-get install htop
fi

# install filezilla
echo -e "Installing filezilla"
# Validate if you have it installed filezilla

if ! command -v filezilla --version &> /dev/null; then
        _file_Install=0
        echo -e "filezilla is not installed and needs to be installed"

else
        _file_Install=1
        echo -e "filezilla is installed"
fi

if [$_file_Install -eq 0]; then
        echo -e "Installing filezilla"
        sudo apt-get install filezilla
fi

# install redis
echo -e "Installing redis"
# Validate if you have it installed redis

if ! command -v redis-cli --version &> /dev/null; then
        _redis_Install=0
        echo -e "redis is not installed and needs to be installed"

else
        _redis_Install=1
        echo -e "redis is installed"
fi

if [$_redis_Install -eq 0]; then
        echo -e "Installing redis"
        sudo apt-get install redis-tools
fi

# Install Docker
echo -e "Installing Docker"
# Validate if you have it installed Docker

if ! command -v docker --version &> /dev/null; then
        _docker_Install=0
        echo -e "Docker is not installed and needs to be installed"

else
        _docker_Install=1
        echo -e "Docker is installed"
fi

if [$_docker_Install -eq 0]; then
        echo -e "Installing Docker"
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
echo -e "Installing Docker Compose"
# Validate if you have it installed Docker Compose

if ! command -v docker-compose --version &> /dev/null; then
        _dockercompose_Install=0
        echo -e "Docker compose is not installed and needs to be installed"

else
        _dockercompose_Install=1
        echo -e "Docker compose is installed"
fi

if [$_dockercompose_Install -eq 0]; then
        echo -e "Installing Docker compose"
	sudo curl -L https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    	sudo chmod +x /usr/local/bin/docker-compose
fi

# Install AWS CLI
echo -e "Installing AWS CLI"
# Validate if you have it installed Docker Compose

if ! command -v aws --version &> /dev/null; then
        _aws_Install=0
        echo -e "Aws cli is not installed and needs to be installed"

else
        _dockercompose_Install=1
        echo -e "Aws Cli compose is installed"
fi

if [$_dockercompose_Install -eq 0]; then
        echo -e "Installing aws cli"
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscliv2.zip
	sudo ./aws/install
fi







