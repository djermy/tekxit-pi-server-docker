#!/bin/sh

# install server if it doesn't exist
if [ ! -f "server/ServerLinux.sh" ]; then
  # download the server zip file
  wget https://tekxit.lol/downloads/tekxit3.14/1.0.980TekxitPiServer.zip

  # unzip server directory
  unzip 1.0.980TekxitPiServer.zip && rm 1.0.980TekxitPiServer.zip

  # move unzipped folder to server
  mv 1.0.980TekxitPiServer/* server/
  rm -r 1.0.980TekxitPiServer/
fi

# navigate to server directory
cd server

# run the server
./ServerLinux.sh
