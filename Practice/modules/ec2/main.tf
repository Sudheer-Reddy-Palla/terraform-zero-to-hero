# Launch an EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-0866a3c8686eaeeba"  # Amazon Linux 2
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}

# Security group for the EC2 instance
resource "aws_security_group" "allow_ssh" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
