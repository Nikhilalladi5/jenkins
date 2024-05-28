sg-id = "aws cloudformation list-exports --query "Exports[?Name=='Dev-MyInstanceSG'].Value" --output text"
subnet-id = "aws cloudformation list-exports --query "Exports[?Name=='Dev-PublicSubnet01Id'].Value" --output text"

aws ec2 run-instances \
 --image-id ami-03afc392d26711a17 \
 --instance-type t2.micro \
 --key-name keypair \
 --security-group-ids ${sg-id} \
 --subnet-id ${subnet-id} \
 --associate-public-ip-address
