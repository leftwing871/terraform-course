provider "aws" {
  access_key = "xxxxxxxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0dad359ff462124ca"
  instance_type = "t2.micro"
  subnet_id     = "subnet-07695ce4e894a8e13"
}
