#!/bin/bash


echo starting nginx...
service nginx start

cd /srv/life_support/
echo changed directory to /srv/life_support/

echo "plugging in life support..."
#start go application
