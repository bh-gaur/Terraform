output "public_ip" {
  value = aws_instance.ec2_machine.public_ip  # get public_ip
}

output "ami_id" {
  value = aws_instance.ec2_machine.ami_id  # get ami_id
}

output "instance_name" {
  value = aws_instance.ec2_machine.tags.Name  # get instance_name
}