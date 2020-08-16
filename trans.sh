#!/bin/sh
# update xxx.xxx.xxx.xxx to your source server ip
SERVER="root@xxx.xxx.xxx.xxx:/home"

helpFunction(){  
  echo ""  
  echo "Usage: $0 account"  
  exit 1 

}

if [ -z "$1" ]
then  
   echo "Account name is empty";  
   helpFunction
fi

rsync -rt ${SERVER}/$1 /home/
