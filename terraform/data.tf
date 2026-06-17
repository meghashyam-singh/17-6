data "aws_ssm_parameter" "catalogue_sg_id" {
    name = "catalogue-sg_id"
}

data "aws_ssm_parameter" "user_sg_id" {
    name = "user-sg_id"
}

data "aws_ssm_parameter" "cart_sg_id" {
    name = "cart-sg_id"
}

data "aws_ssm_parameter" "shipping_sg_id" {
    name = "shipping-sg_id"
}

data "aws_ssm_parameter" "payment_sg_id" {
    name = "payment-sg_id"
}

data "aws_ssm_parameter" "frontend_alb_sg_id" {
    name = "frontend-alb-sg_id"
}