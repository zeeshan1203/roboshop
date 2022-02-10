module "ec2" {
  source          = "git::https://github.com/zeeshan1203/terraform-mutable//instances"
  ENV             = var.ENV
  COMPONENT       = "payment"
  PORT            = 8080
  INSTANCE_COUNT  = var.INSTANCE_COUNT
  INSTANCE_TYPE   = var.INSTANCE_TYPE
  SPOT_PRICE      = var.SPOT_PRICE
  LB_ARN          = data.terraform_remote_state.alb.outputs.PRIVATE_LB_ARN
  LB_DNSNAME      = data.terraform_remote_state.alb.outputs.PRIVATE_LB_DNSNAME
  LB_RULE_WEIGHT  = 300
  LISTENER_ARN    = data.terraform_remote_state.alb.outputs.PRIVATE_LB_LISTENER_ARN
  HEALTH_PATH     = "/health"
}



