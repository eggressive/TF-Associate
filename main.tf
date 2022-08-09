## Providers example
provider "azurerm" {
  features {}
}

## AWS
provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "vm" {
  ami           = "ami-0cabc39acf991f4f1"
  subnet_id     = "subnet-0a464350c4a3c8a92"
  instance_type = "t3.micro"
  tags = {
    Name = "my-tf-spawn-1"
  }
}