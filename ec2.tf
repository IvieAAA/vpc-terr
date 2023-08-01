resource "aws_instance" "app" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  subnet_id = aws_subnet.Public-subnet-main.id
  vpc_security_group_ids = [aws_security_group.myapp.id]
  associate_public_ip_address = true
  key 
  tags = {
    Name = "myapp"
  }
}

resource "aws_security_group" "app_server_security_group" {
  name        = "WebServerSecurityGroup"
  description = "Security group for the web server"


  ingress {
    description = "Allow incoming HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  ingress {
    description = "Allow incoming HTTPS traffic"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  
}