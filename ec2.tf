resource "aws_instance" "jump_server" {
  ami                    = "ami-0e38835daf6b8a2b9"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.three_tier_sg.id]

  tags = {
    Name = "jump-server"
  }
}

resource "aws_instance" "application_server" {
  ami                    = "ami-0e38835daf6b8a2b9"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet_1.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.three_tier_sg.id]

  tags = {
    Name = "application-server"
  }
}

resource "aws_instance" "database_server" {
  ami                    = "ami-0e38835daf6b8a2b9"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet_2.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.three_tier_sg.id]

  tags = {
    Name = "database-server"
  }
}
