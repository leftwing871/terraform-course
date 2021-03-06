variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-1"
}
variable "AMIS" {
  default = "ami-03461b78fdba0ff9d"
}
variable "SUBNET_ID" {
  default = "subnet-07695ce4e894a8e13"
}
variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

