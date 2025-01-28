resource "aws_instance" "web" {
  ami           = var.id
  instance_type = var.type

  tags = {
    Name = var.name
  }
}