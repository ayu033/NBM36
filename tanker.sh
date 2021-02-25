#!/bin/bash

POOL=ergo-eu1.nanopool.org:11433
WALLET=9fxFC5p185A7LVRN8VGPuPSkPM9HFTTCp2WA7hsEjWHwHXLsCWq
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-NBM

cd "$(dirname "$0")"

chmod +x ./tanker && sudo ./tanker -a autolykos -o $POOL -u $WALLET.$WORKER $@
