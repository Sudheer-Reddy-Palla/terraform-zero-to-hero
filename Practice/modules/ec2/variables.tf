# EC2 instance variables
variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
