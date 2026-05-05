# Egypt — Compliance DB Example
# CBE-regulated entities with 10-year audit retention (Egyptian Commercial Code)

module "compliance_db" {
  source  = "app.terraform.io/gtcx-protocol/compliancedb/aws"
  version = "1.1.0"

  environment  = "eg-prod"
  jurisdiction = "egypt" # Auto-sets 10yr audit retention, me-south-1 region
  region       = "me-south-1" # Bahrain — closest to Cairo

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
    Country    = "Egypt"
    Regulator  = "CBE"
    Compliance = "PDPL-151, AML-80"
  }
}

variable "vpc_id" { type = string }
variable "subnet_ids" { type = list(string) }
variable "eks_oidc_provider_arn" { type = string }
variable "eks_oidc_provider_url" { type = string }
variable "allowed_security_groups" { type = list(string) }

output "jurisdiction" { value = module.compliance_db.jurisdiction_metadata }
