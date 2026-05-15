resource "aws_instance" "devops_server" {

  ami           = var.ami_id

  instance_type = var.instance_type

  key_name      = var.key_name

  vpc_security_group_ids = [var.security_group_id]

   lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = "DevOps-Terraform-Server"
  }
}