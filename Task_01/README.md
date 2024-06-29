# Task-01

## Problem Statements Task 1 👍

## 🛠 SetUp Infra With the Terraform on AWS 💯


## -  ☁️ **Create VPC** (my_vpc) 👍

~~~
Create a VPC named "my_vpc" with the CIDR block 10.0.0.0/16.
Enable DNS support and DNS hostnames for the VPC.
~~~

![VPC_with_Terraform](https://github.com/vikas418/Terraform/assets/149520276/787d6846-6ebb-4307-809e-a596b98651cf)

## - 🌐 **Create Subnet**(my_subnet) 👍

~~~
Create a subnet named "my_subnet" within the VPC "my_vpc" with the CIDR block 10.0.1.0/24.
Ensure that the subnet is associated with the availability zone us-east-1a.
~~~

![Subnet_With_Terraform](https://github.com/vikas418/Terraform/assets/149520276/80fb9796-7633-4fbe-9598-081fcddf0774)

## - 🖥️ **Create Instance** (my_instance) 👍

~~~
Launch an EC2 instance named "my_instance" within the subnet "my_subnet".
Choose the instance type "t2.micro".
~~~
![EC2_with_Terraform](https://github.com/vikas418/Terraform/assets/149520276/23a6363a-2bce-4ebc-b8b3-4a62e3342dd3)

## - 🎯 Output of Terraform Script 👍
![Output of Code](https://github.com/vikas418/Terraform/assets/149520276/76649a4f-1324-45b9-9d61-ff355b4e5d04)


# - main.tf
~~~
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "my_subnet"
  }
}

resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.my_subnet.id

  tags = {
    Name = "my_instance"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}

~~~

# - output.tf
~~~
output "vpc_id" {
  value       = aws_vpc.my_vpc.id
  description = "The ID of the VPC"
}

output "subnet_id" {
  value       = aws_subnet.my_subnet.id
  description = "The ID of the subnet"
}

output "instance_id" {
  value       = aws_instance.my_instance.id
  description = "The ID of the EC2 instance"
}
~~~

# - variable.tf
~~~
variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "The CIDR block for the subnet"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The type of instance to use"
}
~~~




















## ✍️ Author :copyright:

- [Vikas Bandi](https://github.com/vikas418)
