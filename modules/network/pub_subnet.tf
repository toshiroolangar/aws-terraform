resource "aws_subnet" "pub_sub_1" {
    vpc_id = aws_vpc.test-vpc.id
    cidr_block = "10.0.5.0/24"

    tags = {
      Name = "Public-Subnet-1"
    }
}