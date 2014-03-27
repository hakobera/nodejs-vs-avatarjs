#!/bin/sh

git clone git@github.com:raymondfeng/loopback-on-jvm.git

for file in build.sh checkout.sh nodej
do
  cp ./patch/$file loopback-on-jvm
done

cd loopback-on-jvm

rm -rf ./avatar-js
rm -rf ./http-parser
rm -rf ./libuv

./checkout.sh
./build.sh
