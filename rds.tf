resource "aws_db_subnet_group" "rds_subnet_group" {
  name = "rds-subnet-group"

  subnet_ids = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]

  tags = {
    Name = "rds-subnet-group"
  }
}

resource "aws_db_instance" "mariadb" {

  identifier = "three-tier-rds"

  engine         = "mariadb"
  engine_version = "11.8"

  instance_class = "db.t3.micro"

  allocated_storage = 20

  db_name = "mydatabase"

  username = "admin"
  password = "Admin12345"

  publicly_accessible = false

  multi_az = false

  availability_zone = "ap-south-1c"

  vpc_security_group_ids = [
    aws_security_group.three_tier_sg.id
  ]

  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name

  skip_final_snapshot = true

  tags = {
    Name = "three-tier-rds"
  }
}
