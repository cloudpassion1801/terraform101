resource "aws_vpc" "my_local_vpc" {
    cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terraform_statedemo"
  }
  
}




