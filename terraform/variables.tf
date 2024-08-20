variable "vpc_cidr" {
  type        = string
  description = "The IPv4 CIDR blcok of the vpc"
}

variable "workload" {
  type        = string
  description = "Name of the application workload"
}

variable "instance-type" {
  type        = string
  description = "EC2 instance type"
}

variable "instance-key-name" {
  type = string
  description = "Instance key name"
}

variable "environment" {
  type = string
  description = "Workload environment e.g dev, prod and staging."
}