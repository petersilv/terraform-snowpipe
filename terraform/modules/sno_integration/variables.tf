# ----------------------------------------------------------------------------------------------------------------------
# Locals

locals {

  snowflake_application = upper(var.application)

}

# ----------------------------------------------------------------------------------------------------------------------
# Variables

variable "application" {
  type = string
}

variable "common_tags" {
  type = map
}

variable "snowflake_database" {
  type = string
  default = "LANDING_DB"
}

variable "snowflake_schema" {
  type = string
  default = "PUBLIC"
}

variable "aws_account_id" {
  type = string
}

variable "aws_s3_bucket_id" {
  type = string
}

variable "aws_s3_bucket_arn" {
  type = string
}
