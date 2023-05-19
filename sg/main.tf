resource "aws_security_group" "S_G" {
  name        = "S_G"
  vpc_id      = var.securityg

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = var.mysecuritygroup
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {

    Name = "S_G"
  }
}