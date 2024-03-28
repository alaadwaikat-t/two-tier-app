resource "aws_instance" "app_server" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  tags = {
    Name = "API App Server"
  }
}
