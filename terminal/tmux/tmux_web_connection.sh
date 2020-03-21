#!/bin/bash

WEB_CONNECTED=🌐
WEB_DISCONNECTED=❌

echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo $WEB_CONNECTED
else
    echo $WEB_DISCONNECTED
fi
