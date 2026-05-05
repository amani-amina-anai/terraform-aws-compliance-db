# Zimbabwe Pilot — Compliance DB Example
# Deploys dual PostgreSQL + KYC storage for ZWCMP compliance

module "compliance_db" {
  source = "github.com/amani-amina-anai/terraform-aws-compliance-db"

  environment  = "zimbabwe-pilot"
  jurisdiction = "zimbabwe"
  region       = "af-south-1"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  # Database sizing (evaluation tier)
  operational_instance_class = "db.t3.micro"
  operational_storage_gb     = 20
  multi_az                   = false
  deletion_protection        = true

  # KYC document storage
  enable_kyc_storage    = true
  eks_oidc_provider_arn = var.eks_oidc_provider_arn
  eks_oidc_provider_url = var.eks_oidc_provider_url

  allowed_security_groups = var.allowed_security_groups

  tags = {
    Country    = "Zimbabwe"
    Regulator  = "ZWCMP"
    CostCenter = "zw-pilot"
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
