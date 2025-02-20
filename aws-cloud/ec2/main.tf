# Create EC2 machine 

resource "aws_instance" "my_instance" {
    count = var.num                 # how many instance will create
    ami = var.ami_id                  # ami_id for instance
    instance_type = var.instance_type # instance type 
    key_name = var.key_name           # attach key pair to instance
    security_groups = [var.security_groups]

    tags = {
      Name = var.name                 # instance name 
    }

    user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install curl gnupg2 ca-certificates lsb-release ubuntu-keyring -y
              curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
              gpg --dry-run --quiet --no-keyring --import --import-options import-show /usr/share/keyrings/nginx-archive-keyring.gpg
              echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] http://nginx.org/packages/ubuntu lsb_release -cs nginx" | sudo tee /etc/apt/sources.list.d/nginx.list
              apt update 
              apt install nginx
              nginx -v
              systemctl start nginx
              systemctl status nginx
              EOF

}