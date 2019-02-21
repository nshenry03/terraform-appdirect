terraform {
  backend "s3" {}
}

provider "aws" {
  alias               = "primary"
  region              = "${var.primary_region}"
  allowed_account_ids = ["${var.aws_allowed_account_ids}"]
}

provider "aws" {
  alias               = "failover"
  region              = "${var.failover_region}"
  allowed_account_ids = ["${var.aws_allowed_account_ids}"]
}

module "this" {
  providers = {
    aws.primary  = "aws.primary"
    aws.failover = "aws.failover"
  }

  source  = "git@github.com:nshenry03/terraform-appdirect-vpc.git"
  version = "${var.module_version}"

  name = "${var.name}"

  primary_vpc_cidr             = "${var.primary_vpc_cidr}"
  primary_vpc_azs              = ["${var.primary_vpc_azs}"]
  primary_vpc_private_subnets  = ["${var.primary_vpc_private_subnets}"]
  primary_vpc_public_subnets   = ["${var.primary_vpc_public_subnets}"]
  primary_vpc_database_subnets = ["${var.primary_vpc_database_subnets}"]
  primary_vpc_intra_subnets    = ["${var.primary_vpc_intra_subnets}"]

  failover_vpc_cidr             = "${var.failover_vpc_cidr}"
  failover_vpc_azs              = ["${var.failover_vpc_azs}"]
  failover_vpc_private_subnets  = ["${var.failover_vpc_private_subnets}"]
  failover_vpc_public_subnets   = ["${var.failover_vpc_public_subnets}"]
  failover_vpc_database_subnets = ["${var.failover_vpc_database_subnets}"]
  failover_vpc_intra_subnets    = ["${var.failover_vpc_intra_subnets}"]
}
