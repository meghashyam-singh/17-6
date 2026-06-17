resource "aws_security_group_rule" "catalogue_ingress_rule" {
    count = length(var.catalogue_ingress_ports)
    type = "ingress"
    from_port = var.catalogue_ingress_ports[count.index]
    to_port = var.catalogue_ingress_ports[count.index]
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.catalogue_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
}

resource "aws_security_group_rule" "user_ingress_rule" {
    count = length(var.user_ingress_ports)
    type = "ingress"
    from_port = var.user_ingress_ports[count.index]
    to_port = var.user_ingress_ports[count.index]
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.user_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
}

resource "aws_security_group_rule" "cart_ingress_rule" {
    count = length(var.cart_ingress_ports)
    type = "ingress"
    from_port = var.cart_ingress_ports[coun.index]
    to_port = var.cart_ingress_ports[count.index]
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.cart_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
}

resource "aws_security_group_rule" "shipping_ingress_rule" {
    count = length(var.shipping_ingress_ports)
    type = "ingress"
    from_port = var.shipping_ingress_ports[coun.index]
    to_port = var.shipping_ingress_ports[count.index]
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.shipping_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
}

resource "aws_security_group_rule" "payment_ingress_rule" {
    count = length(var.payment_ingress_ports)
    type = "ingress"
    from_port = var.payment_ingress_ports[count.index]
    to_port = var.payment_ingress_ports[count.index]
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.payment_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
}

resource "aws_security_group_rule" "loadbalancer_ingress_rule" {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
    cidr_blocks = ["0.0.0.0/0"]
}
