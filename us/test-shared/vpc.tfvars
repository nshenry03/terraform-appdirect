name = "test-shared"
marketplace_module_version  = "v1.0.0"

"aws_allowed_account_ids" = [
  "845868186186",
]

"primary_region" = "us-east-2"
"failover_region" = "us-west-2"

primary_vpc_cidr             = "10.0.0.0/16"
primary_vpc_azs              = ["us-east-2a", "us-east-2b", "us-east-2c"]
primary_vpc_private_subnets  = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
primary_vpc_public_subnets   = ["10.0.20.0/24", "10.0.21.0/24", "10.0.22.0/24"]
primary_vpc_database_subnets = ["10.0.30.0/24", "10.0.31.0/24", "10.0.32.0/24"]
primary_vpc_intra_subnets    = ["10.0.40.0/24", "10.0.41.0/24", "10.0.42.0/24"]

failover_vpc_cidr             = "10.1.0.0/16"
failover_vpc_azs              = ["us-west-2a", "us-west-2b", "us-west-2c"]
failover_vpc_private_subnets  = ["10.1.10.0/24", "10.1.11.0/24", "10.1.12.0/24"]
failover_vpc_public_subnets   = ["10.1.20.0/24", "10.1.21.0/24", "10.1.22.0/24"]
failover_vpc_database_subnets = ["10.1.30.0/24", "10.1.31.0/24", "10.1.32.0/24"]
failover_vpc_intra_subnets    = ["10.1.40.0/24", "10.1.41.0/24", "10.1.42.0/24"]
