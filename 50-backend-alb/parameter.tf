resource "aws_ssm_parameter" "backednd_alb_listner_arn" {
  name  = "/${var.project}/${var.environment}/backednd_alb_listner_arn"
  type  = "String"
  value = aws_lb_listener.backednd_alb.arn
}