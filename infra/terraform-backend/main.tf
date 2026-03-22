resource "aws_s3_bucket" "inboxflow_terraform_state" {
    bucket = "inboxflow-terraform-state"

    lifecycle {
        prevent_destroy = true
    }
}

resource "aws_s3_bucket_versioning" "inboxflow_terraform_state_versioning" {
    bucket = aws_s3_bucket.inboxflow_terraform_state.id
    versioning_configuration {
        status = "Enabled"
    }
}
