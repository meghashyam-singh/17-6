resource "aws_lb" "frontend_lb" {
    name = "${local.common_name}-frontend-lb"
    internal = false
    load_balancer_type = "application"    
    subnets = [ aws_subnet.public[*].id ]
    security_groups = [ data.aws_ssm_parameter.frontend_alb_sg_id.value ]

    enable_deletion_protection = false

    tags = {
        Name = "${local.common_name}-frontend-lb"
    }
}


resource "aws_target_group" "frontend_target_group" {
    target_type = "instance"
    name = "frontend-target-group"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.roboshop_vpc.id

    health_check {
        path                = "/"
        protocol            = "HTTP"
        healthy_threshold   = 2
        unhealthy_threshold = 2
        interval            = 30
        timeout             = 5
    }
}