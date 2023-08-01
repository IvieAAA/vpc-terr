provider "aws" {
    region = "us-west-1"
}

resource "aws_vpc" "main" {
  cidr_block =   "10.0.0.0/16"
  tags = {
    Name = "main_vpc"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id =  aws_vpc.main.id

  tags = {
    Name = "IGW main"
  }
}

resource "aws_subnet" "Public-subnet-main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "Public-subnet-Main"
  }
}
  


resource "aws_subnet" "Private-subnet-main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "Private-subnet-Main"
  }
}



