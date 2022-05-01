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