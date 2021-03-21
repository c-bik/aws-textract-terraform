# General
aws_region  = "ap-southeast-1"
aws_account = "182101634518"
namespace   = "shared"
environment = "production"
aws_role    = "OrganizationAccountAccessRole"

# SQS queue
aws_sqs_queue_name = "182191634518-ap-southeast-1-textract-sqs-queue"

# s3 bucket
aws_s3_bucket_name = "182191634518-ap-southeast-1-text-analyzer"

# DynamoDB Table
aws_dynamodb_table_name           = "text-analyzer-dynamodb"
aws_dynamodb_table_hash_key       = "documentId" # https://www.terraform.io/docs/backends/types/s3.html#dynamodb_table
aws_dynamodb_table_read_capacity  = "1"
aws_dynamodb_table_write_capacity = "1"

# Lambda

aws_lambda_function_function_name = "textract_lambda"
aws_lambda_function_filename = "textract_lambda.zip"
aws_lambda_function_handler = "textract_lambda.lambda_handler"
aws_lambda_function_runtime = "python3.6"

# Lambda archive file

archive_file_source_file = "textract_lambda.py"
archive_file_output_path = "textract_lambda.zip"