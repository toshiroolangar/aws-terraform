resource "aws_subnet" "priv_sub_1" {
  vpc_id = aws_vpc.test-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Private-Subnet-1"
  }
}

resource "aws_subnet" "priv_sub_2" {
    vpc_id = aws_vpc.test-vpc.id
    cidr_block = "10.0.2.0/24"

    tags = { 
      Name = "Private-Subnet-2"
    }
}

resource "aws_subnet" "priv_sub_3" {
    vpc_id = aws_vpc.test-vpc.id
    cidr_block = "10.0.3.0/24"

    tags = {
      Name = "Private-Subnet-3"
    }
  
}