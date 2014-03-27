#!/bin/bash

if [ -z "$JAVA_HOME" ]; then
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
fi

echo "<< 1. Calc fibonacci >>"
cd 1_fibonacci
./run.sh
cd ..

echo ""
echo "<< 2. Octane >>"
cd benchmark-octane
npm install

echo '[Run on Node.js]'
node run.js

echo ''
echo '[Run on Avatar.js on Nashorn]'
../loopback-on-jvm/nodej run.js
cd ..

echo ""
echo "<< 3. Octane on JavaFX WebView"
java -Xms1g -Xmx1g -cp ./javafx-webview webviewsample.WebViewSample
