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
