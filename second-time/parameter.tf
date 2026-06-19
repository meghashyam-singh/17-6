resource "aws_ssm_parameter" "sg_ids" {
    count = length(var.sg_names)
    name = "${local.common_name}_${var.sg_names[count.index]}_sg_id"
    type = "String"
    value = aws_security_group.roboshop_sg[count.index].id
}