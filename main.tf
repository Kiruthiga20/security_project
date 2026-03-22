data "tfe_outputs" "network" {
        organization = "first-hcp-org"
        workspace = "network-project"
        }

output "network_public_ips" {
   description = "List of public ips fetched from security project"
   value = data.terraform_remote_state.network.outputs.public_ips
}
