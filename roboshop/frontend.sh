#!\bin\bash



USER_UID=$(id -u)
if [ ${USER_UID} -ne 0 ]; than
  echo -e "/e[1;31myou shouid be a root user to perform this script\e[0m"
  exit
fi


yum install nginx -y