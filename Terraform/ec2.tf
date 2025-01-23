resource "aws_instance" "this" {
  ami                     = "ami-091f18e98bc129c4e"
  instance_type           = "t2.micro"
    tags = {
    Name = "test"
  }
}