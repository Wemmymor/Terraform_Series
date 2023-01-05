
variable "region" {
  description = "aws region"
  #default     = "ca-central-1"
  type = string
}

variable "ami" {
  description = "ami id"
  #default     = "ami-06c3426233c180fef"
  type = string
}

variable "instance_type" {
  description = "instance_type"
  #default     = "t2.micro"
  type = string
}

variable "tags" {
  description = "instance-tag"
  #default     = "bootcamp"
  type = string
}