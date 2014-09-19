Trusting SSL certificates
========

<pre>
This shell script used to download server cert from <b><i>server_address</i></b> & you can also provide user specific <b><i>cert_name</i></b> to cert. </br>
After downloading it'll start generating the keystore for which user need to give <b><i>keystore_password</i></b>.</br>
ASAP keystore generated, it'll verify keystore using same <b><i>keystore_password</i></b>, which user need to enter for verification.
</br> 
To make use of this script, first you need to set JAVA_HOME & CLASSPATH for BouncyCastle. For example:-
</br>
export JAVA_HOME="/opt/java/jdk1.8.0_20"</br>
export CLASSPATH="/home/ashish/Library/BouncyCastle"
</pre>
