#!/bin/bash

clear

echo "Please enter server address: "

read server_address

echo "Please enter cert name: "

read cert_name

echo "Downloading certificate now..."

echo | openssl s_client -connect "$server_address":443 2>&1 | \
 sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > /home/ashish/SSL/"$cert_name".cer

echo "Build Keystore Script Start Now"

echo "Please enter keystore password: "

read -s keystore_password

export CLASSPATH=bcprov-jdk15on-151.jar
CERTSTORE=/home/ashish/SSL/"$cert_name"keystore.bks
if [ -a $CERTSTORE ]; then
    rm $CERTSTORE || exit 1
fi
keytool \
      -import \
      -v \
      -trustcacerts \
      -alias 0 \
      -file <(openssl x509 -in /home/ashish/SSL/"$cert_name".cer) \
      -keystore $CERTSTORE \
      -storetype BKS \
      -provider org.bouncycastle.jce.provider.BouncyCastleProvider \
      -providerpath /home/ashish/Library/BouncyCastle/bcprov-jdk15on-151.jar \
      -storepass "$keystore_password"

echo "Verify keystore"

keytool \
      -list \
      -keystore $CERTSTORE \
      -storetype BKS \
      -provider org.bouncycastle.jce.provider.BouncyCastleProvider \
      -providerpath /home/ashish/Library/BouncyCastle/bcprov-jdk15on-151.jar