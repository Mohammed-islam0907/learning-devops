resource "aws_instance" "test" {
  ami           = var.id
  instance_type = var.type

  tags = {
    Name = var.message
  }
}

variable "id" {
  default = "ami-084725666251e790b"
  
}

variable "type" {
  default = "t2.micro"
  
}

variable "message" {
  default = "terraform-launch"
  
}