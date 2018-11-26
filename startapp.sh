#!/bin/bash
service nginx start
/usr/bin/mono /usr/lib/mono/4.5/fastcgi-mono-server4.exe /applications=/:/data /socket=tcp:127.0.0.1:9000
