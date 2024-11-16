resource "aws_instance" "this" {
  ami                     = "ami-0e8d228ad90af673b"
  instance_type           = "t2.micro"

}