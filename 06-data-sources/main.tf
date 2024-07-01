#data "aws_ssm_parameter" "user" {
#  name = "dev.rds.username"
#}
#
#output "username" {
#  value = data.aws_ssm_parameter.user.value
#}

data "aws_instance" "instance" {
  filter {
    name   = "tag:Name"
    values = ["workstation"]
  }
}

output "instance" {
  value = "instance ID - ${data.aws_instance.instance.id} | Public Ip - ${data.aws_instance.instance.public_ip}"
}