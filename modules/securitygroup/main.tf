resource "aws_security_group" "example" {
  name        = var.sg_name
  vpc_id      = var.vpc_id

  tags = {
      "Name" = var.sg_name
  }
}

resource "aws_security_group_rule" "ingress_rules" {

  security_group_id = aws_security_group.example.id
  type = "ingress"

  cidr_blocks = var.ingress_cidr_blocks
  from_port = var.from_port
  to_port   = var.to_port
  protocol  = var.protocol
}
