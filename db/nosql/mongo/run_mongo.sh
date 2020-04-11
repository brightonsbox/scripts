#!/bin/bash

echo "Starting mongo instance on port 21017..."

killall mongod &> /dev/null

#truncate -s 0 $HOME/data/mongo/logs/scratch.log

mongod --fork --storageEngine mmapv1 --port 27017 --dbpath $HOME/data/mongo/scratch --logpath $HOME/data/mongo/logs/scratch.log --nojournal --noprealloc --smallfiles
