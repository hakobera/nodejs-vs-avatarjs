#!/bin/sh

echo "=================================================="
echo " Build Avatar.js "
echo "=================================================="

git clone https://github.com/raymondfeng/loopback-on-jvm.git

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

cd ..

echo ""
echo "=================================================="
echo " Get Octane "
echo "=================================================="

git clone https://github.com/dai-shi/benchmark-octane.git

echo ""
echo " Make JavaFX WebView"

cd javafx-webview
javac -cp . ./webviewsample/WebViewSample.java

cd ..
