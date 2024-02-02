resource "aws_security_group" "sim_module_sg" {
  name = var.SG_NAME

ingress {
  from_port   = var.HTTP_PORT
  to_port     = var.HTTP_PORT
  protocol    = "tcp"
  cidr_blocks = [var.CIDR_RANGE]
  }
}
