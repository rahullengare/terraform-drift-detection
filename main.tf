resource "aws_security_group" "mysg" {
  name = "drift-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-0d76b909de1a0595d"
  instance_type = "t2.micro"

  security_groups = [aws_security_group.mysg.name]

  tags = {
    Name = "Drift-EC2"
  }
}

resource "aws_s3_bucket" "mys3" {
  bucket = "drift-demo-bucket-1234567"
}
