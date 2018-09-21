//--------------------------------------------------------------------
// Variables
variable "vault_addr" {}
variable "vault_token" {}
variable "workspace_name" {}
variable "tfe_api" {}
variable "tfe_token" {}

//--------------------------------------------------------------------
// Modules
module "gcp_k8s" {
  source  = "app.terraform.io/Darnold-WalMart_Demo/gcp-k8s/tfe"
  version = "1.0.0"

  cluster_env = "gke"
  cluster_name = "staging"
  cluster_zone = "europe-west1-b"
  github_org = "HappyPathway"
  oauth_token = "${module.oauth_token.oauth_token}"
  organization = "${var.organization}"
  repo_name = "gke-cluster"
  vault_addr = "${var.gcp_k8s_vault_addr}"
  vault_token = "${var.gcp_k8s_vault_token}"
  workspace_name = "${var.gcp_k8s_workspace_name}"
}


module "gcp_k8s" {
  source  = "app.terraform.io/Darnold-WalMart_Demo/gcp-k8s/tfe"
  version = "1.0.0"

  cluster_env = "gke"
  cluster_name = "dev"
  cluster_zone = "europe-west1-b"
  github_org = "HappyPathway"
  oauth_token = "${module.oauth_token.oauth_token}"
  organization = "${var.organization}"
  repo_name = "gke-cluster"
  vault_addr = "${var.gcp_k8s_vault_addr}"
  vault_token = "${var.gcp_k8s_vault_token}"
  workspace_name = "${var.gcp_k8s_workspace_name}"
}

module "gcp_k8s" {
  source  = "app.terraform.io/Darnold-WalMart_Demo/gcp-k8s/tfe"
  version = "1.0.0"

  cluster_env = "gke"
  cluster_name = "production"
  cluster_zone = "europe-west1-b"
  github_org = "HappyPathway"
  oauth_token = "${module.oauth_token.oauth_token}"
  organization = "${var.organization}"
  repo_name = "gke-cluster"
  vault_addr = "${var.gcp_k8s_vault_addr}"
  vault_token = "${var.gcp_k8s_vault_token}"
  workspace_name = "${var.gcp_k8s_workspace_name}"
}
module "oauth_token" {
  source  = "app.terraform.io/Darnold-WalMart_Demo/oauth-token/tfe"
  version = "1.0.0"

  tfe_api = "${var.oauth_token_tfe_api}"
  tfe_org = "Darnold-WalMart_Demo"
  tfe_token = "${var.oauth_token_tfe_token}"
}
