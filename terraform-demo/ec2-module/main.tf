
resource "aws_instance" "bc-demo" {
  ami           = var.ami # ca-central-1
  instance_type = var.instance_type

  tags = {
    "Name" = var.tags
  }
}

