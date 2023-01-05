module "bc" {
  source        = "./ec2-module"
  ami           = var.ami
  instance_type = var.instance_type
  region        = var.region
  tags          = var.tags
}

output "instance_ip_addr" {
  #value = aws_instance.bc-demo.private_ip # resource-name.resource-type.output
  value = module.bc.instance_ip_addr
}


