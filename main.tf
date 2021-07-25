provider "aws" {
  version = "~> 3.0 "
  region  = "us-east-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "terraform" {
ami           ="ami-0233c2d874b811deb"
 instance_type = "t2.micro"

  tags = {
    Name = "Terraform Instance"
  }
}
