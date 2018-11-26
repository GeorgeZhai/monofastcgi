FROM 	mono:5.12
LABEL maintainer="George Zhai"
RUN 	apt-get update && apt-get upgrade -y
RUN   apt-get install mono-fastcgi-server4 nginx -y

RUN   echo "fastcgi_param  PATH_INFO 	  \"\";" >> /etc/nginx/fastcgi_params
RUN   echo "fastcgi_param  SCRIPT_FILENAME    \$document_root\$fastcgi_script_name;" >> /etc/nginx/fastcgi_params

COPY monocgi /etc/nginx/sites-enabled/

COPY startapp.sh /usr/bin/


# Create app directory
RUN   mkdir /data

# Define the working directory
WORKDIR   /data

CMD ["/bin/bash"]
