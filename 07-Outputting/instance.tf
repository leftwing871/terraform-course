resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
    #command = <<EOT
    #
    #echo ${aws_instance.example.private_ip} >> private_ips.txt
    #echo ${aws_instance.example.private_ip} >> private_ips1.txt
    #echo ${aws_instance.example.private_ip} >> private_ips2.txt
    #
    #EOT
  }
}
output "ip" {
  value = aws_instance.example.public_ip
}
