data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket                = "terraform-szs"
    key                   = "immutable/vpc/${var.ENV}/terraform.tfstate"
    region                = "us-east-1"
  }
}

data "terraform_remote_state" "alb" {
  backend = "s3"

  config = {
    bucket                = "terraform-szs"
    key                   = "immutable/alb/${var.ENV}/terraform.tfstate"
    region                = "us-east-1"
  }
}
