data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket                = "terraform-szs"
    key                   = "mutable/vpc/${var.ENV}/terraform.tfstate"
    region                = "us-east-1"
  }
}

data "terraform_remote_state" "alb" {
  backend = "s3"

  config = {
    bucket                = "terraform-szs"
    key                   = "mutable/alb/${var.ENV}/terraform.tfstate"
    region                = "us-east-1"
  }
}
