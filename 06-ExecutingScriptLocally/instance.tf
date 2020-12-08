resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name      = "268114937024_seoul"
  subnet_id       = "subnet-06f78741a4d845972"
  security_groups = ["sg-0469ee278d4364791"]  
  
  #local-exec 프로비저너는 이름 그대로 로컬에서 실행하는 프로비저너다. 여기서 로컬은 terraform apply를 실행하는 현재 머신을 의미한다.
  #https://blog.outsider.ne.kr/1342
  provisioner "local-exec" {
    command = "echo private ip ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}
output "public_ip" {
  value = aws_instance.example.public_ip
}
