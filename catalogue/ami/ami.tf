module "ami" {
  source        = "git::https://github.com/zeeshan1203/terraform-ami.git"
  COMPONENT     = "catalogue"
  APP_VERSION   = var.APP_VERSION
}

variable "APP_VERSION" {}

terraform {
  backend "s3" {
    bucket                = "terraform-szs"
    key                   = "amis/catalogue/terraform.tfstate"
    region                = "us-east-1"
    dynamodb_table        = "terraform"
  }
}

provider "aws" {
  region = "us-east-1"
}