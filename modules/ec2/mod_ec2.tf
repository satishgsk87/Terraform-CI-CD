resource "aws_instance" "myweb" {
   ami = "${var.ami}"
   instance_type = "${var.instance_type}"
   security_groups = ["default"]
   key_name = "${var.wista-project-key}"
   user_data = <<EOF
   #! /bin/bash
   sudo yum update -y 
   sudo yum install git -y 
   sudo cd /
   sudo git clone -q https://github.com/satishgsk87/Terraform-CI-CD.git
   sudo cd /Terraform-CI-CD/
   sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
   sudo yum install puppet-agent -y
   puppet apply httpd.pp 
   EOF
   
   tags = {
    name = "${var.name}"
   }
}
