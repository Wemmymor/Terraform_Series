
resource "aws_instance" "ec2" {
    ami = data.aws_ami.amazonlinux2.id
    instance_type = var.inst_type
    tags = {
        Name = var.ec2name
    }
}

