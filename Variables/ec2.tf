# Resource: EC2 Instance
resource "aws_instance" "myec2M" {
  # ami = var.my_ami
  # ami = "ami-0e5b6b6a9f3db6db8"
  ami = data.aws_ami.amazonlinux2.id
  # instance_type = var.instance_type
  # instance_type = "t2.micro"
  # instance_type = var.instance_type_list[2]  # for list
  instance_type = var.instance_type_map["dev"] # for map
  user_data = file("${path.module}/app1-install.sh")
  # key_name = var.instance_keypair
  # security_groups= [ aws_security_group.web-traffic.name]
  vpc_security_group_ids= [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
  count = 5
  tags = {
    "Name" = "Prod-${count.index}"
  }
}