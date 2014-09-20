Trusting SSL certificates
========

This shell script used to download server cert from **server_address** & you can also provide user specific **cert_name** to cert. After downloading it'll start generating the keystore for which user need to give **keystore_password**. ASAP keystore generated, it'll verify keystore using same **keystore_password**, which user need to enter for verification.
> To make use of this script, first you need to set JAVA_HOME & CLASSPATH for BouncyCastle. For example:-
 * export JAVA_HOME="/opt/java/jdk1.8.0_20"
 * export CLASSPATH="/home/ashish/Library/BouncyCastle"

# Few Screenshots
![Run Script](https://cloud.githubusercontent.com/assets/3125668/4344243/0b9d54d6-4083-11e4-8941-a13911057eef.png "Run Script")
![Enter Server Address](https://cloud.githubusercontent.com/assets/3125668/4344241/0b9bd084-4083-11e4-99a2-31d7bcca93fa.png "Enter Server Address")
![Create Keystore](https://cloud.githubusercontent.com/assets/3125668/4344240/0b9ac6bc-4083-11e4-83b6-8131bc64a109.png "Create Keystore")
![Verify Keystore](https://cloud.githubusercontent.com/assets/3125668/4344242/0b9c324a-4083-11e4-9677-ad6bcaffc58a.png "Verify Keystore")
![Cert & Keystore](https://cloud.githubusercontent.com/assets/3125668/4344244/0ba1c908-4083-11e4-8cf6-8b8c7d64b536.png "Cert & Keystore")
