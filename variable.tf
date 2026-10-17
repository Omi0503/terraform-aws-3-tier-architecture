variable "aws_region" {
  default = "ap-south-1"
}
variable "vpc_cidr" {
  default = "10.0.0.0/24"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
  default = "Terraform_Practice_Key_Pair"
}