# ---------------------------------------------
# Application Load Balancer
# ---------------------------------------------
resource "aws_lb" "front" {
  name               = "${var.project}-${var.environment}-front-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups = [
    aws_security_group.web_sg.id
  ]
  subnets = [
    aws_subnet.public_subnet_1a.id,
    aws_subnet.public_subnet_1c.id
  ]

  # depends_on = [
  #   aws_acm_certificate.tokyo_cert
  # ]
}
