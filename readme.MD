Base image to use mono cgi applications with nginx


Mount mono fast cgi application to /data
and run the start script: /usr/bin/startapp.sh

e.g.

`cd <monocgi app dir>

docker run -idt --name monocgiapp -v`pwd`:/data -p8090:8080 georgezhai/monocgi:0.1 /usr/bin/startapp.sh
`
