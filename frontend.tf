# frontend.tf
resource "aws_instance" "frontend" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu 22.04 AMI ID (change based on region)
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "NodeJSFrontend"
  }

  # Security Group
  vpc_security_group_ids = [aws_security_group.frontend_sg.id]
}

resource "aws_security_group" "frontend_sg" {
  name        = "frontend-sg"
  description = "Allow HTTP and SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Change to your IP for better security
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
