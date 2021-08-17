# Frontend Environment
module "frontend_and_cloudfront_distribution" {
  source = "./modules"
  bucket_name = "${var.application_name}-${var.environment}"
  bucket_acl = "public-read"
  environment = var.environment
}