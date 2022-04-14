
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-east-1b"
  tags = {
    Name = "Default subnet"
  }
}
resource "aws_security_group" "secure" {
  name        = "secure"
  description = "Allow HTTP, SSH inbound traffic"
  vpc_id      = aws_default_vpc.default.id
ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
ingress {
    description = "k8s"
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
ingress {
    description = "k8s-1"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    description = "ping"
    from_port   = 0
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
tags = {
    Name = "security-wizard"
  }
}
resource "aws_instance" "resMaster" {
  ami           = "ami-0affd4508a5d2481b"
  instance_type = "t3.small"
  key_name = "Aerdevopsrv2"
  security_groups = [ "${aws_security_group.secure.name}" ]
  tags = {
    Name = "Master"
  }
  root_block_device {
    delete_on_termination = "true"
  }
}
resource "aws_instance" "resNodes" {
  ami = "ami-0affd4508a5d2481b"
  instance_type = "t3.small"
  key_name = "Aerdevopsrv2"
  count = 3
  security_groups = [ "${aws_security_group.secure.name}" ]
  tags = {
    Name = "Nodes"
  }
  root_block_device {
    delete_on_termination = "true"
  }
}
