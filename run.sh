ssh -i "cse291c-hw2-danli-seoul.pem" ec2-user@ec2-13-125-229-59.ap-northeast-2.compute.amazonaws.com
ssh -i "cse291c-hw2-danli-Ireland.pem" ec2-user@ec2-34-245-150-142.eu-west-1.compute.amazonaws.com
ssh -i "cse291c-hw2-danli-SaoPaulo.pem" ec2-user@ec2-54-233-197-185.sa-east-1.compute.amazonaws.com
ssh -i "cse291c-hw2-danli-Mumbai.pem" ec2-user@ec2-13-232-57-177.ap-south-1.compute.amazonaws.com
sudo yum install git
git clone https://github.com/VernonLD/sp18-hw2.git
./setup_vm.sh
. ~/.bashrc
mvn protobuf:compile protobuf:compile-custom
mvn package
##Seoul, Korea ↔ Dublin, Ireland 
./target/globesort/bin/runServer 8888
./target/globesort/bin/runClient 34.245.150.142 8888 1000000

## Dublin, Ireland ↔ Sao Paulo, Brazil

./target/globesort/bin/runServer 8888
./target/globesort/bin/runClient 54.233.197.185 8888 1000000

##Sao Paulo, Brazil ↔ Mumbai, India
./target/globesort/bin/runServer 8888
./target/globesort/bin/runClient 13.232.57.177 8888 1000000

##Mumbai, India ↔ Seoul, Korea
./target/globesort/bin/runServer 8888
./target/globesort/bin/runClient 13.125.229.59 8888 1000000

