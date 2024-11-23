resource "aws_instance" "this" {
  ami                     = "ami-0e8d228ad90af673b"
  instance_type           = "t2.micro"
}

resource "aws_instance" "import" {
  ami                     = "ami-0e8d228ad90af673b"
  instance_type           = "t2.micro"

     tags = {
    Name = "terraform-import"
  }

  
}


