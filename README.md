# V4L4JOdroidC1C2
V4L4J shared libs, JAR, and install script for dependencies. Video capture for Java operational on Odroid C1 and C2
<p/>
<b>enable 32-bit architecture</b><br/>
dpkg --add-architecture armhf<br/>
install 32-bit libraries<br/>
apt-get install libc6:armhf libncurses5:armhf libstdc++6:armhf<br/>
<b>download and install java 8, 32-bit, from Oracle website<br/>
update alternatives so the 32-bit version is the default java version:</b><br/>
tar xvfz jdk-8u33-linux-arm-vfp-hflt.gz<br/>
mkdir /usr/lib/jvm<br/>
mv jdk1.8.0_33 /usr/lib/jvm/<br/>
export PATH=$PATH:/usr/lib/jvm/jdk1.8.0/bin<br/>
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.8.0_33/bin/javac 1<br/>
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8.0_33/bin/java 1<br/>
update-alternatives --config javac<br/>
update-alternatives --config java<br/>
