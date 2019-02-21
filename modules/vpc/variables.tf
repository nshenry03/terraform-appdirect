variable "aws_allowed_account_ids" {
  type = "list"
}

variable "failover_region" {
  type = "string"
}

variable "failover_vpc_azs" {
  type = "list"
}

variable "failover_vpc_cidr" {
  type = "string"
}

variable "failover_vpc_database_subnets" {
  type = "list"
}

variable "failover_vpc_intra_subnets" {
  type = "list"
}

variable "failover_vpc_private_subnets" {
  type = "list"
}

variable "failover_vpc_public_subnets" {
  type = "list"
}

variable "module_version" {
  type = "string"
}

variable "name" {
  type = "string"
}

variable "primary_region" {
  type = "string"
}

variable "primary_vpc_azs" {
  type = "list"
}

variable "primary_vpc_cidr" {
  type = "string"
}

variable "primary_vpc_database_subnets" {
  type = "list"
}

variable "primary_vpc_intra_subnets" {
  type = "list"
}

variable "primary_vpc_private_subnets" {
  type = "list"
}

variable "primary_vpc_public_subnets" {
  type = "list"
}

variable "terraform_backend_s3_bucket" {
  type = "string"
  description = "The name of the S3 bucket."
}

variable "terraform_backend_s3_dynamodb_table" {
  type = "string"
  description = "The name of a DynamoDB table to use for state locking and consistency. The table must have a primary key named LockID. If not present, locking will be disabled."
}

variable "terraform_backend_s3_region" {
  type = "string"
  description = "The region of the S3 bucket."
}

variable "terraform_backend_s3_key" {
  type = "string"
  description = "The path to the state file inside the bucket."
}

variable "terraform_backend_s3_profile" {
  type = "string"
  description = "This is the AWS profile name as set in the shared credentials file."
}
