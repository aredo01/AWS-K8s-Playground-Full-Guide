# AWS region
variable "region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

# VPC ID (optional if using existing VPC)
variable "vpc_id" {
  description = "VPC ID for EKS cluster (optional)"
  default     = null
}

# Subnets (optional if using existing VPC)
variable "public_subnets" {
  description = "List of public subnet IDs (optional)"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "List of private subnet IDs (optional)"
  type        = list(string)
  default     = []
}

# Key name for SSH access
variable "key_name" {
  description = "Name of the PEM key pair for EC2 nodes"
  default     = "miniprojects"
}

# Node group instance type
variable "node_instance_type" {
  description = "EC2 instance type for EKS worker nodes"
  default     = "t3.medium"
}

# Disk size for nodes
variable "node_disk_size" {
  description = "Disk size (GB) for worker nodes"
  default     = 8
}

# Node group scaling
variable "desired_capacity" {
  description = "Desired number of worker nodes"
  default     = 2
}

variable "max_capacity" {
  description = "Max number of worker nodes"
  default     = 3
}

variable "min_capacity" {
  description = "Min number of worker nodes"
  default     = 1
}
