Trusting SSL certificates
========

This shell script used to download server cert from **server_address** & you can also provide user specific **cert_name** to cert. After downloading it'll start generating the keystore for which user need to give **keystore_password**. ASAP keystore generated, it'll verify keystore using same **keystore_password**, which user need to enter for verification.
> To make use of this script, first you need to set JAVA_HOME & CLASSPATH for BouncyCastle. For example:-
 * export JAVA_HOME="/opt/java/jdk1.8.0_20"
 * export CLASSPATH="/home/ashish/Library/BouncyCastle"
