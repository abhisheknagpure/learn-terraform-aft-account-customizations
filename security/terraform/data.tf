data "aws_region" "current" {}
data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
data "aws_organizations_organization" "roots" {
count = local.is_organization_onboarding ? 1 : 0
}