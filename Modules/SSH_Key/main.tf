resource "aws_key_pair" "SSH_KEY" {
  key_name   = var.SSH_KEY_NAME
  public_key = var.PUB_KEY
}