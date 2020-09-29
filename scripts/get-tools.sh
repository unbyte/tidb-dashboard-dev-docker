# update
yum update

# git
yum install git -y

# make
yum install gcc gcc-c++ make -y

# go
yum install sudo -y # required by go install script
curl -O https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh
chmod +x goinstall.sh && ./goinstall.sh --version 1.14

# node
curl -sL https://rpm.nodesource.com/setup_14.x | bash -
yum install nodejs -y

# java
yum install java-11-openjdk-devel -y

# tiup
curl --proto '=https' --tlsv1.2 -sSf https://tiup-mirrors.pingcap.com/install.sh | sh