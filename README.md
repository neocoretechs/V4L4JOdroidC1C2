# V4L4JOdroidC1C2
V4L4J shared libs, JAR, and install script for dependencies. Video capture for Java operational on Odroid C1 and C2
<p/>
enable 32-bit architecture<br/>
dpkg --add-architecture armhf
install 32-bit libraries
apt-get install libc6:armhf libncurses5:armhf libstdc++6:armhf
download and install java 8, 32-bit, from Oracle website
update alternatives so the 32-bit version is the default java version:
tar xvfz jdk-8u33-linux-arm-vfp-hflt.gz
mkdir /usr/lib/jvm
mv jdk1.8.0_33 /usr/lib/jvm/
export PATH=$PATH:/usr/lib/jvm/jdk1.8.0/bin
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.8.0_33/bin/javac 1
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8.0_33/bin/java 1
update-alternatives --config javac
update-alternatives --config java
