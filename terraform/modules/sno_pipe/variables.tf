# ----------------------------------------------------------------------------------------------------------------------
# Locals

locals {

  snowflake_table       = upper(var.table_name)

}

# ----------------------------------------------------------------------------------------------------------------------
# Variables

variable "application" {
  type = string
}

variable "snowflake_database" {
  type = string
}

variable "snowflake_schema" {
  type = string
}

variable "snowflake_stage" {
  type = string
}

variable "stage_folder" {
  type = string
}

variable "table_name" {
  type = string
}

variable "aws_s3_bucket_id" {
  type = string
}
