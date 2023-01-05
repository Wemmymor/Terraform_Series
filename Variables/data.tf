# Data sources

  data "aws_ami" "amazonlinux2" {
    most_recent      = true
    owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}



#  ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20221201

# amzn2-ami-kernel-*-arm64-gp2
# amzn2-ami-kernel-5.10-hvm-2.0.20221103.3-arm64-gp2

# amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2
# amzn2-ami-kernel-5.10-hvm-2.0.20221103.3-x86_64-gp2

# amzn2-ami-hvm-*-gp2
# amzn2-ami-hvm-2.0.20211005.0-x86_64-gp2