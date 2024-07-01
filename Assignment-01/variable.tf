variable "aws_region" {
  type        = string
  description = "aws region name"
  default     = "us-east-1"
}

variable "aws_az" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}


variable "cidr_vpc" {
  type        = string
  description = "vpc cidr range"
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type        = string
  description = "instance tenancy"
  default     = "default"
}

variable "vpc_tag" {
  type        = string
  description = "vpc tag name"
  default     = "ninja-vpc"
}


variable "private_subnet_cidr" {
  description = "private subnet cidr range"
  type        = list(string)
  default     = ["10.0.0.0/18", "10.0.64.0/18"]
}

variable "private_subnet_tag" {
  description = "private subnet names"
  type        = list(string)
  default     = ["ninja-pri-sub-01", "ninja-pri-sub-02"]
}


variable "public_subnet_cidr" {
  description = "public subnet cidr range"
  type        = list(string)
  default     = ["10.0.128.0/18", "10.0.192.0/18"]
}

variable "public_subnet_tag" {
  description = "public subnet name"
  type        = list(string)
  default     = ["ninja-pub-sub-01", "ninja-pub-sub-02"]
}


variable "igw" {
  type        = string
  description = "igw"
  default     = "ninja-igw"
}


variable "nat" {
  type        = string
  description = "Name of NAT gateway"
  default     = "ninja-nat"
}


variable "public_route_tag" {
  type        = string
  description = "Name of route table"
  default     = "ninja-pub-routeT"
}

variable "private_route_tag" {
  type        = string
  description = "Name of route table"
  default     = "ninja-pri-routeT"
}


variable "ami" {
  type        = string
  description = "ID of ami to launch"
  default     = "ami-0f7b55661ecbbe44c"
}


variable "instance_type" {
  type        = string
  description = "Type of instance"
  default     = "t2.micro"
}


variable "key" {
  type        = string
  description = "key pair name"
  default     = "Vikas-Key"
}


variable "ingress_ports" {
  description = "List of ingress ports for the security group"
  type        = list(number)
  default     = [22, 80]
}

variable "egress_ports" {
  description = "List of egress ports for the security group"
  type        = list(number)
  default     = [0]
}

variable "cidr_blocks" {
  description = "List of CIDR blocks for the security group"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}


variable "public_instance_tag" {
  type    = string
  default = "bastion-server"
}

variable "private_instance_tag" {
  type    = string
  default = "private-instance"
}
