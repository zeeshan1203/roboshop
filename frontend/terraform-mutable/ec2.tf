module "ec2" {
  source          = "git::https://github.com/zeeshan1203/terraform-mutable.git//instances"
  ENV             = var.ENV
  COMPONENT       = "frontend"
  PORT            = 80
  INSTANCE_COUNT  = var.INSTANCE_COUNT
  INSTANCE_TYPE   = var.INSTANCE_TYPE
  SPOT_PRICE      = var.SPOT_PRICE
  LB_ARN          = data.terraform_remote_state.alb.outputs.PUBLIC_LB_ARN
  LB_DNSNAME      = data.terraform_remote_state.alb.outputs.PUBLIC_LB_DNSNAME
  LB_RULE_WEIGHT  = 100
  LISTENER_ARN    = data.terraform_remote_state.alb.outputs.PUBLIC_LB_LISTENER_ARN
  HEALTH_PATH     = "/"
}
