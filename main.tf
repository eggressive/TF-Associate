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

## Variables
# String
variable "stringvar" {
  type    = string
  default = "Hi there!"
}

# List of strings
variable "manystrings" {
  type    = list(string)
  default = [ "eu-cetral-1" ]
}

# List of objects
variable "dockerPorts" {
  type = list(object({
    internal = number
    external = number
    protocol = string 
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}

## Output values
# shown at terraform apply
output "instance_ip" {
  description = "VM private IP"
  value = aws_instance.my-tf-spawn-1.private_ip
}