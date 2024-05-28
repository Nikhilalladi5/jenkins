sgId=$(aws cloudformation list-exports --query "Exports[?Name=='Dev-MyInstanceSG'].Value" --output text)
subnetId=$(aws cloudformation list-exports --query "Exports[?Name=='Dev-PublicSubnet01Id'].Value" --output text)

aws ec2 run-instances \
 --image-id ami-03afc392d26711a17 \
 --instance-type t2.micro \
 --key-name keypair \
 --security-group-ids ${sgId} \
 --subnet-id ${subnetId} \
 --associate-public-ip-address
