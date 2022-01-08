#!\bin/bash


yum install nginx -y

if [ $? -ne 0]; than
echo "Nginx install failed"
exit 1
fi


curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
Deploy in Nginx Default Location.
if [ $? -ne 0 ] ; than
echo "download frontend failed"
exit 1
fi


