#!/bin/bash 
echo "WARNING: If you are using the ordinary helper in the path, it WILL break!"
echo "Instead, use clicommitr."
export URL=$PWD
cd "magic"
MAGIC=$(node index.js --commit="$1" --type="$2" --lint)
cd $URL
echo "Commiting '$MAGIC'... Press Ctrl+C to cancel."
sleep 1s
echo "Continuing."
git add .
git commit -m "$MAGIC"
git push
git pull