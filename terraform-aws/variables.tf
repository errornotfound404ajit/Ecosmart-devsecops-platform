variable "aws_region" {
  default = "ap-south-1"
}


variable "ami_id" {
  description = "AMI ID for EC2"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "key_name" {
  description = "SSH key pair name"
}