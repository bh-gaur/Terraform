# Create EC2 machine 

resource "aws_instance" "ec2_machine" {
    count = var.num                 # how many instance will create
    ami = var.ami_id                  # ami_id for instance
    instance_type = var.instance_type # instance type 
    key_name = var.key_name           # attach key pair to instance
    security_groups = [var.security_groups]

    tags = {
      Name = var.name                 # instance name 
    }

}