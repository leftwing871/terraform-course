resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name      = "268114937024_seoul"
  subnet_id       = "subnet-06f78741a4d845972"
  security_groups = ["sg-0469ee278d4364791"]


  #https://www.terraform.io/docs/provisioners/file.html
  #파일 프로 비저 너는 Terraform을 실행하는 머신에서 새로 생성 된 리소스로 파일 또는 디렉토리를 복사하는 데 사용됩니다.
  #파일 프로 비저 너는 ssh 및 winrm 유형 연결을 모두 지원합니다.
  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
  }
  
  https://www.terraform.io/docs/provisioners/remote-exec.html
  #원격 실행 프로 비져 너는 원격 리소스가 생성 된 후 스크립트를 호출합니다.
  #provisioner는 ssh 및 winrm 유형 연결을 모두 지원합니다.
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh"
    ]
  }
  
  connection {
    host        = coalesce(self.public_ip, self.private_ip)
    user        = var.INSTANCE_USERNAME
    private_key = file(var.PATH_TO_PRIVATE_KEY)
  }

}
