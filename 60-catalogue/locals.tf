locals {
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  ami_id          = data.aws_ami.joindevops.id
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
  backend_alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
  common_tags = {
      Project     = var.project         # e.g. "joindevops"
      Environment = var.environment     # e.g. "dev"
      Terraform   = "true"
  }
}