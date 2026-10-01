#!/bin/bash

useradd -m -d /home/hadoop -s /bin/bash hadoop
echo "hadoop:hadoop" | chpasswd

echo "hadoop  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
cat >> /home/hadoop/.bashrc << 'EOF'
export HADOOP_HOME="/opt/hadoop/hadoop-3.4.1"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
EOF

chown hadoop:hadoop /home/hadoop/.bashrc
