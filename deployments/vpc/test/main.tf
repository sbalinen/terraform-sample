provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "../../../modules/vpc/"
  vpcname = "test"
  cidr = "172.10.0.0/16"
  private_subnets = ["172.10.1.0/24", "172.10.2.0/24"]
  zones = ["us-west-2a", "us-west-2b"]
}

module "securitygroup" {
  source = "../../../modules/securitygroup/"
  sg_name = "test-sg"
  vpc_id = "modules.vpc.vpc_id"
  ingress_cidr_blocks = ["183.82.110.177/32"]
  from_port = 80
  to_port = 80
}
