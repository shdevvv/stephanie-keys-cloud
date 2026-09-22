variable "aws_region" {
  description = "Wilayah AWS Cloud"
  type        = string
  default     = "ap-southeast-1"
}

variable "environment" {
  description = "Lingkungan deployment"
  type        = string
  default     = "production"
}

variable "vpc_cidr" {
  description = "Blok IP CIDR untuk VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Blok IP CIDR untuk Public Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Blok IP CIDR untuk Private Subnets"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24"]
}

variable "availability_zones" {
  description = "Zone ketersediaan AWS"
  type        = list(string)
  default     = ["ap-southeast-1a", "ap-southeast-1b"]
}