resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.three_tier_vpc.id
  cidr_block              = "10.0.0.0/26"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.three_tier_vpc.id
  cidr_block        = "10.0.0.64/26"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.three_tier_vpc.id
  cidr_block        = "10.0.0.128/26"
  availability_zone = "ap-south-1c"

  tags = {
    Name = "private-subnet-2"
  }
}
