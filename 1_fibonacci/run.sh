#!/bin/sh

echo '[Run on Node.js]'
node fibonacci.js
echo ''
echo '[Run on Avatar.js on Nashorn]'
../loopback-on-jvm/nodej fibonacci.js
