resource "aws_instance" "my_ec2" {
  ami             = var.AMI_ID
  instance_type   = var.INS_TYPE
  key_name        = var.SSH_KEY_NAME
  security_groups = SECURITY_GROUP_NAMES
  tags = {
    Name = var.TAG_NAME
  }
}