#!/bin/bash

# Create directory structure
mkdir -p layer/tile38
cd layer

# Download Tile38 release
curl -L https://github.com/tidwall/tile38/releases/download/1.19.3/tile38-1.19.3-linux-amd64.tar.gz -o tile38-1.19.3-linux-amd64.tar.gz

# Unzip
tar xzvf tile38-1.19.3-linux-amd64.tar.gz

# Move server and cli binary
mv tile38-1.19.3-linux-amd64/tile38-server tile38/tile38-server
mv tile38-1.19.3-linux-amd64/tile38-cli tile38/tile38-cli

# Cleanup
rm -rf tile38-1.19.3-linux-amd64/
rm tile38-1.19.3-linux-amd64.tar.gz
