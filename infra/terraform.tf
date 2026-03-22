terraform {
    
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }

    
    backend "s3" {
        bucket = "inboxflow-terraform-state"
        key    = "inboxflow/terraform.tfstate"
        region = "eu-west-3"
    }
    
}