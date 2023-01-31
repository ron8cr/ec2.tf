variable "aws_region" {
  description = "AWS region where the instance will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type (i.e size of the instance)"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key to be installed on the instance"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "ID of the subnet where the instance will be deployed"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "ID of the VPC where the instance will be deployed"
  type        = string
  default     = null
}

