resource "aws_security_group_rule" "catalogue_ingress_rule" {
    count = length(var.catalogue_ingress_ports)
    type = "ingress"
    from_port = var.catalogue_ingress_ports[count.index]
    to_port = var.catalogue_ingress_ports[count.index]
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.catalogue_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
}