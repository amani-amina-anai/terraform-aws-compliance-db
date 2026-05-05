# Nigeria — Compliance DB Example
# CBN + NDPA compliant dual PostgreSQL for licensed PSPs and MMOs
# Note: Nigeria requires 6-year KYC retention (not 5)

module "compliance_db" {
  source  = "app.terraform.io/gtcx-protocol/compliancedb/aws"
  version = "1.1.0"

  environment  = "ng-prod"
  jurisdiction = "nigeria" # Auto-sets 6yr KYC retention per CBN AML/CFT §18
  region       = "af-south-1"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  operational_instance_class = "db.t3.medium"
  operational_storage_gb     = 100
  multi_az                   = true

  enable_kyc_storage    = true
  eks_oidc_provider_arn = var.eks_oidc_provider_arn
  eks_oidc_provider_url = var.eks_oidc_provider_url

  allowed_security_groups = var.allowed_security_groups

  tags = {
    Country    = "Nigeria"
    Regulator  = "CBN"
    Compliance = "NDPA, CBN-AML"
  }
}

variable "vpc_id" { type = string }
variable "subnet_ids" { type = list(string) }
variable "eks_oidc_provider_arn" { type = string }
variable "eks_oidc_provider_url" { type = string }
variable "allowed_security_groups" { type = list(string) }

output "jurisdiction" { value = module.compliance_db.jurisdiction_metadata }
