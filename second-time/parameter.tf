resource "aws_ssm_parameter" "sg_ids" {
    count = length(var.sg_names)
    name = "${local.common_name}-${var.sg_names[count.index]}"
    type = "String"
    value = aws_security_group.roboshop_sg.id
}