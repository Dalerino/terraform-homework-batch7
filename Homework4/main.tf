provider aws {
    region = var.region
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  availability_zone = var.az
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  count = var.instance_count

  tags = {
    Name = "Homework4"
  }
}