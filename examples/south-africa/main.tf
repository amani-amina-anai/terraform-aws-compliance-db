# South Africa — Compliance DB Example
# POPIA-compliant dual PostgreSQL + KYC for SARB-regulated entities

module "compliance_db" {
  source  = "app.terraform.io/gtcx-protocol/compliancedb/aws"
  version = "1.1.0"

  environment  = "za-prod"
  jurisdiction = "south_africa"
  region       = "af-south-1" # Cape Town — in-country data residency

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  # Production sizing
  operational_instance_class = "db.t3.medium"
  operational_storage_gb     = 100
  multi_az                   = true
  deletion_protection        = true

  # KYC — FICA §22 requires 5 years
  enable_kyc_storage    = true
  eks_oidc_provider_arn = var.eks_oidc_provider_arn
  eks_oidc_provider_url = var.eks_oidc_provider_url

  allowed_security_groups = var.allowed_security_groups

  tags = {
    Country    = "South Africa"
    Regulator  = "SARB"
    Compliance = "POPIA, FICA"
    CostCenter = "za-prod"
  }
}

variable "vpc_id" { type = string }
variable "subnet_ids" { type = list(string) }
variable "eks_oidc_provider_arn" { type = string }
variable "eks_oidc_provider_url" { type = string }
variable "allowed_security_groups" { type = list(string) }

output "operational_endpoint" { value = module.compliance_db.operational_endpoint }
output "audit_endpoint" { value = module.compliance_db.audit_endpoint }
output "jurisdiction" { value = module.compliance_db.jurisdiction_metadata }
