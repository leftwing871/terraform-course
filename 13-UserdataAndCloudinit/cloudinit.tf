data "template_file" "init-script" {
  template = file("scripts/init.cfg")
  vars = {
    REGION = var.AWS_REGION
  }
}
data "template_file" "shell-script" {
  template = file("scripts/volumes.sh")
  vars = {
    DEVICE = var.INSTANCE_DEVICE_NAME
  }
}

/*
https://docs.aws.amazon.com/ko_kr/AWSEC2/latest/UserGuide/user-data.html
Amazon EC2에 shell 스크립트 및 cloud-init 명령이라는 두 가지 유형의 사용자 데이터를 전달할 수 있습니다. 

*/

data "template_cloudinit_config" "cloudinit-example" {

  gzip          = false
  base64_encode = false

  part {
    filename     = "init.cfg"
    content_type = "text/cloud-config"
    content      = data.template_file.init-script.rendered
  }

  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.shell-script.rendered
  }

}
