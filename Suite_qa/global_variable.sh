#!/bin/bash


cd $HOME

#environment variable java
if [ "$JAVA_HOME" ]; then
    echo  "*********************************************************************"
	echo  "Enviroment variable was created"
	echo  "*********************************************************************"
	echo $JAVA_HOME
else
   echo  "*********************************************************************"
	echo  "environment variable JAVA_HOME is not created"
	echo  "*********************************************************************"
	echo  "environment variable JAVA_HOME creating"
   	printf "export JAVA_HOME=/bin/java\n" >> .bashrc
   	echo $JAVA_HOME
   	
fi



#environment variable aws


if [ "$AWS_SHARED_CREDENTIALS_FILE" ]; then
      echo  "*********************************************************************"
	echo  "Enviroment variable $AWS_SHARED_CREDENTIALS_FILE exist"
	echo  "*********************************************************************"

else
    echo  "*********************************************************************"
	echo  "environment variable is not created"
	echo  "*********************************************************************"
    printf "export AWS_SHARED_CREDENTIALS_FILE"=.aws/flex/credentials"\n" >> .bashrc
fi

if [ "$AWS_CONFIG_FILE" ]; then
    echo  "*********************************************************************"
	echo  "Enviroment variable  $AWS_CONFIG_FILE exist"
	echo  "*********************************************************************"
else
   echo  "*********************************************************************"
	echo  "environment variable is not created"
	echo  "*********************************************************************"
    printf "export AWS_CONFIG_FILE=".aws/flex/config"\n" >> .bashrc
fi

if [ "$PROJECT_SHORT" ]; then
    echo  "*********************************************************************"
	echo  "Enviroment variable  $PROJECT_SHORT exist"
	echo  "*********************************************************************"
else
    echo  "*********************************************************************"
	echo  "environment variable is not created"
	echo  "*********************************************************************"
    printf "export PROJECT_SHORT="flex"\n" >> .bashrc
fi

printf "export PATH=$PATH:/snap/bin/liquibase" >> .bashrc

