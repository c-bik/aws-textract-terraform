# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

variable "aws_role" {
  type        = string
  description = "Used AWS role."
}

variable "namespace" {
  type        = string
  description = "Namespace."
}

variable "environment" {
  type        = string
  description = "Environment."
}


# SQS queue

variable "aws_sqs_queue_name" {
  type        = string
  description = "Required - Name of the sqs queue."    
}

# S3 Bucket

variable "aws_s3_bucket_name" {
  type        = string
  description = "Required - Name of the s3 bucket."    
}

# DynamoDB Table
variable "aws_dynamodb_table_name" {
  type        = string
  description = "The name of the table, this needs to be unique within a region."
}

variable "aws_dynamodb_table_hash_key" {
  type        = string
  description = "(Required, Forces new resource) The attribute to use as the hash (partition) key. Must also be defined as an attribute, see below."
}

variable "aws_dynamodb_table_read_capacity" {
  type        = string
  description = "(Optional) The number of read units for this table. If the billing_mode is PROVISIONED, this field is required."
}

variable "aws_dynamodb_table_write_capacity" {
  type        = string
  description = "(Optional) The number of write units for this table. If the billing_mode is PROVISIONED, this field is required."
}

# Lambda
variable "aws_lambda_function_name" {
  type        = string
  description = "Required - Name of the lambda function"    
}

variable "aws_lambda_function_filename" {
  type        = string
  description = "Required - fileame of the lambda function ends in filename.zip"    
}

variable "aws_lambda_function_handler" {
  type        = string
  description = "Required - Name of the lambda handler"    
}

variable "aws_lambda_function_runtime" {
  type        = string
  description = "Required - runtime of the lambda function, python, node, c#, etc"    
}