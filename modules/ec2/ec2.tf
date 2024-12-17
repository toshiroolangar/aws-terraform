data "aws_ami" "al_2023_ami" {
  most_recent      = true
  owners           = ["amazon"]
 
  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
 
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
 
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
 
}

resource "aws_instance" "cka_instance" {
  ami           = "ami-0fae88c1e6794aa17"#data.aws_ami.al_2023_ami.id
  instance_type = "t3.micro"
  key_name = "cka-master1_kp"
  iam_instance_profile = "EC2InstanceRoleForDeployment"
  subnet_id = var.public_subnet_id
  associate_public_ip_address = true
  user_data = file("${path.module}/userdata.sh")
  tags = {
    Name = "cka-master1"
    Env = "dev"
  }
}
