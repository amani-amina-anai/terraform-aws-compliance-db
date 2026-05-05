# Kenya Production — Compliance DB Example
# Deploys dual PostgreSQL + KYC for CBK compliance (Central Bank of Kenya)

module "compliance_db" {
  source = "github.com/amani-amina-anai/terraform-aws-compliance-db"

  environment  = "kenya-prod"
  jurisdiction = "kenya"
  region       = "af-south-1"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  # Production sizing
  operational_instance_class = "db.t3.medium"
  operational_storage_gb     = 100
  multi_az                   = true
  deletion_protection        = true

  # Backup — 30 day automated + 7 year archive
  backup_retention_days = 30

  # KYC — CBK requires 7 years for financial records
  enable_kyc_storage    = true
  kyc_retention_days    = 2555 # 7 years
  eks_oidc_provider_arn = var.eks_oidc_provider_arn
  eks_oidc_provider_url = var.eks_oidc_provider_url

  allowed_security_groups = var.allowed_security_groups

  tags = {
    Country    = "Kenya"
    Regulator  = "CBK"
    CostCenter = "ke-prod"
  }
}

variable "vpc_id" { type = string }
variable "subnet_ids" { type = list(string) }
variable "eks_oidc_provider_arn" { type = string }
variable "eks_oidc_provider_url" { type = string }
variable "allowed_security_groups" { type = list(string) }

output "operational_endpoint" { value = module.compliance_db.operational_endpoint }
output "audit_endpoint" { value = module.compliance_db.audit_endpoint }
output "kyc_bucket" { value = module.compliance_db.kyc_bucket_name }
