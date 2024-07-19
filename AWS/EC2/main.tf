# Create EC2 machine 

resource "aws_instance" "ec2_machine" {
    count = var.count                 # how many instance will create
    ami = var.ami_id                  # ami_id for instance
    instance_type = var.instance_type # instance type 
    key_name = var.key_name           # attach key pair to instance
    vpc_security_group_ids = [var.vpc_security_group_ids]

    tags = {
      Name = var.name                 # instance name 
    }

}