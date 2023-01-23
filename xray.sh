#!/bin/sh
if [ ! -f UUID ]; then
  UUID="aad64ea9-1834-4722-bcb8-7f5f36c1fbb7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

