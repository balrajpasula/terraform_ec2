variable "region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "ap-south-1" 
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string
 
  default     = "ami-0c5204b7759d97034"
}

variable "instance_type" {
  description = "The type of EC2 instance to deploy."
  type        = string
  default     = "t2.micro"
}
