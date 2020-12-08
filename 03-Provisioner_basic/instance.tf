# cf1) aws configure
# cf2) aws ec2 delete-key-pair --key-name mykey
# ssh-keygen -f ~/mykey
# terraform init
# terraform plan -out /tmp/p.out
# terraform apply -auto-approve
# cat terraform.tfstate|grep public_ip
# ssh -i ~/mykey ubuntu@13.209.73.61

# terraform destroy -auto-approve

# resource "aws_key_pair" "mykey" {
#   key_name   = "mykey"
#   public_key = file("~/mykey.pub")
# }

resource "aws_instance" "example" {
  ami           = var.AMIS
  instance_type = var.INSTANCE_TYPE
  subnet_id     = var.SUBNET_ID
  key_name      = "268114937024_seoul"

  tags = {
    Name = "My Instance"
  }
}
