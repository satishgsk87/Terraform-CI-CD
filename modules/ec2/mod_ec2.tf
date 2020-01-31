resource "aws_instance" "myweb" {
   ami = "${var.ami}"
   instance_type = "${var.instance_type}"
   security_groups = ["default"]
   key_name = "${var.wista-project-key}"
   
   tags = {
    name = "${var.name}"
   }
}
