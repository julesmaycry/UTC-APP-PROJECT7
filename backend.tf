terraform {
  backend "s3" {
    bucket = "proj7-terrafrom"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "locktable"
    
  }
}