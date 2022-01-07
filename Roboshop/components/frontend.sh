#!\bin/bash


yum install ninx -y
if [ $? -ne 0]; than
echo "Nginx install failed"
exit 1
fi


curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zi"
Deploy in Nginx Default Location.
if [ $? -ne 0 ] ; than
echo "download frontend failed"
exit 1
fi

echo cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip
mv frontend-main/* .
mv static/* .
rm -rf frontend-master static README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
systemctl enable nginx
systemctl restart nginx

