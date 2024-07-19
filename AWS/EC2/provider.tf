# Define aws provider 

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



# provider "aws" {
#   region = "us-west-2"
#   access_key = "your-access-key"     # Alternatively, use environment variables
#   secret_access_key = "your-secret-key"  # Alternatively, use environment variables
# }