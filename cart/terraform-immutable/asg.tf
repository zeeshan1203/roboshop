module "asg" {
  source          = "git::https://github.com/zeeshan1203/terraform-immutable//asg"
  ENV             = var.ENV
  COMPONENT       = "cart"
  PORT            = 8080
  INSTANCE_COUNT  = var.INSTANCE_COUNT
  INSTANCE_TYPE   = var.INSTANCE_TYPE
  SPOT_PRICE      = var.SPOT_PRICE
  LB_ARN          = data.terraform_remote_state.alb.outputs.PRIVATE_LB_ARN
  LB_DNSNAME      = data.terraform_remote_state.alb.outputs.PRIVATE_LB_DNSNAME
  LB_RULE_WEIGHT  = 200
  LISTENER_ARN    = data.terraform_remote_state.alb.outputs.PRIVATE_LB_LISTENER_ARN
  HEALTH_PATH     = "/health"
  ASG_MIN_SIZE    = var.ASG_MIN_SIZE
  ASG_MAX_SIZE    = var.ASG_MAX_SIZE
  APP_VERSION     = var.APP_VERSION
}
