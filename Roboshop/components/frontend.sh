#!\bin/bash


yum install nginx -y

if [ $? -ne 0]; than
echo "Nginx install failed"
exit 1
f1


curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zi"
Deploy in Nginx Default Location.
if [ $? -ne 0 ] ; than
echo "download frontend failed"
exit 1
f1


