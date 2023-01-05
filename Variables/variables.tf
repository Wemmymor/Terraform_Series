/*
variable "region" {
  description = "The aws region"
  type = string
  default = "us-west-2"
  }
  
  variable "my_ami" {
  description = "The aws ami"
  type = string
  default = "ami-094125af156557ca2"
  }
  
  variable "instance_type" {
  description = "The ec2 instance type"
  type = string
  default = "t2.micro"
  }
   variable "key_pair" {
  description = "The ec2 key_pair"
  type = string
  default = "automationkey"
  }
  
  variable "ingressrules" {
  type = list(number)
  default = [80, 443, 8080, 22]
  }
  variable "egressrules" {
  type = list(number)
  default = [80, 443, 25, 3306, 53, 8080]
  }

*/



  # Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-west-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t3.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "Automationkey"
}

# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "EC2 Instance Type"
  type = list(string)
  default = ["t2.micro", "t2.medium", "t3.large"]
}

# AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa" = "t3.small"
    "prod" = "t3.large"
  }
}