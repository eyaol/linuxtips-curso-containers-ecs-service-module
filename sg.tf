#
# Create service security group
#
resource "aws_security_group" "main" {
  name   = format("%s-sg", var.service_name)
  vpc_id = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = var.service_sg_ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Liberando trafego na porta ${ingress.value}"
    }
  }
}