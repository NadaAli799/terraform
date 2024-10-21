# variables.tf
variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"  
}

variable "key_name" {
  description = "Key name for EC2 instance"
  type        = string
}

variable "db_username" {
  description = "The database admin username"
  type        = string
}

variable "db_password" {
  description = "The database admin password"
  type        = string
}
