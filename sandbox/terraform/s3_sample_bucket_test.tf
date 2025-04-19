data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_dev_test_bucket" {
  bucket = "aft-sandbox-dev-test-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
