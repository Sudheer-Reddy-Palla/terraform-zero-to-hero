terraform {
  backend "s3" {
    bucket         = "terraformstatefilespractice"      # Replace with your S3 bucket name
    key            = "env/${terraform.workspace}/terraform.tfstate" 
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"     # DynamoDB table for state locking
  }
}
