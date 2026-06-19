resource "aws_security_group" "roboshop_sg" {
    count = length(var.sg_names)
    name = "${local.common_name}-${var.sg_names[count.index]}"
    description = "roboshop security groups"

    vpc_id = aws_vpc.roboshop_vpc.id

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
        Name = "${local.common_name}=${var.sg_names[count.index]}"
    }

}