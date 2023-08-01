variable "region" {
  description = "The AWS region where the resources will be created."
  type        = string
  default     = "us-west-1"
}

variable "instance_type" {
  description = "The EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "aws_subnet.Public-subnet-main.id"
  type        = string
  default     = "subnet"
}

variable "mykey" {
  description = "key"
  type        = string
  default     = "terrakey"
  
}


   