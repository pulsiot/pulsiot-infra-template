variable "inst_type" {
  description = "Enter the EC2 Instance Type:"
  type        = string 
  default     = "t3.micro" 
}

variable "inst_name" {
  description = "Enter a name for this EC2 Instance:"
  type        = string
  default     = "svr01"
}

variable "proj_name" {
  description = "Enter a name for this EC2 Instance:"
  type        = string
  default     = "pulsiot"
}

variable "env_name" {
  description = "Enter a name for this EC2 Instance:"
  type        = string
  default     = "dev"
}

variable "key_pair" {
  description = "Enter the name of Key Pair which you want to use with this EC2 Instance:"
  type        = string
  default     = "anish"
}

variable "ami_id" {
  description = "Enter the AMI Image ID to use with this EC2 Instance:"
  type        = string
  default     = "ami-0c6a6b0e75b2b6ce7"
}

variable "vpc_id" {
  description = "Enter the VPC ID:"
  type        = string
  default     = "vpc-367ecb5d"
}

variable "cidr_blocks" {
  description = "Enter the IPv4 CIDR block:"
  type        = list
  default     = ["0.0.0.0/0"]
}

variable "ipv6_cidr_blocks" {
  description = "Enter the IPv6 CIDR block:"
  type        = list
  default     = ["::/0"]
}