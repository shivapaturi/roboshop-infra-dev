locals {
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
    backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value

    common_tags = {
        Project     = var.project         # e.g. "joindevops"
        Environment = var.environment     # e.g. "dev"
        Terraform   = "true"
  }
}