#!/bin/bash

if [ -z "$JAVA_HOME" ]; then
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
fi

echo "<< 1. Calc fibonacci >>"
cd 1_fibonacci
./run.sh
cd ..

echo "<< 2. Octane >>"
cd benchmark-octane
npm install

echo '[Run on Node.js]'
node run.js

echo ''
echo '[Run on Avatar.js on Nashorn]'
../loopback-on-jvm/nodej run.js
