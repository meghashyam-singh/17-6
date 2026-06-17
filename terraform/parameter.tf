resource "aws_ssm_parameter" "sg_ids" {
    count = length(var.sg_names)
    name = "${var.sg_names[count.index]}-sg_id"
    type = "String"
    value = aws_security_group.roboshop_sg[count.index].id
}