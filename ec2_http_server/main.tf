variable ami_id {
  type    = string
  default = "ami-0002b1c4226195f8d"
}

variable security_group_id {
  type = string
}

variable subnet_id {
  type = string
}

resource "aws_instance" "http_server" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "techtino-macbook-pro"
  tags = {
    Name = "http-server"
  }
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
}