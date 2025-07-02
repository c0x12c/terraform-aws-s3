resource "aws_s3_bucket_logging" "this" {
  count = var.enabled_access_logging ? 1 : 0

  bucket = local.bucket.id

  target_bucket = var.access_log_target_bucket_id
  target_prefix = var.access_log_target_prefix
}
