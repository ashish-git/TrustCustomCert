Trusting SSL certificates
========

I wrote this shell script to download server cert from <u><i>server_address</i></u> & give user specific <u><i>cert_name</i></u> to cert. 
After downloading it'll start generating the keystore for which user need to give <u><i>keystore_password</i></u>. 
ASAP keystore generated, it'll verify keystore using same <u><i>keystore_password</i></u>, which user need to enter for verification.
 
To make use of this script, first you need to set JAVA_HOME & CLASSPATH for BouncyCastle. For example:-
 
export JAVA_HOME="/opt/java/jdk1.8.0_20"
export CLASSPATH="/home/ashish/Library/BouncyCastle"
