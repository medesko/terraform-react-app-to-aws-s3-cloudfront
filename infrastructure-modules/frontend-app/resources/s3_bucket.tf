/** 
  ==============================================
    Define S3 Bucket
  ==============================================
*/
resource "aws_s3_bucket" "frontend_app_bucket" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  policy = data.aws_iam_policy_document.s3_bucket_policy.json

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  versioning {
    enabled = var.versioning
  }

  tags = {
    Name = var.bucket_name
  }
}