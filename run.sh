#!/bin/sh

echo "Starting the server..."
./build.sh

docker run -it --rm \
  --name tekxit-pi-server \
  -p 25565:25565 \
  -v "$(pwd)/server/":/game/server/ \
  tekxit-pi-server
