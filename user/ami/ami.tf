module "ami" {
  source        = "git::https://github.com/zeeshan1203/terraform-ami.git"
  COMPONENT     = "user"
  APP_VERSION   = var.APP_VERSION
}

variable "APP_VERSION" {}

terraform {
  backend "s3" {
    bucket                = "terraform-szs"
    key                   = "amis/user/terraform.tfstate"
    region                = "us-east-1"
    dynamodb_table        = "terraform"
  }
}

provider "aws" {
  region = "us-east-1"
}