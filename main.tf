data "tfe_outputs" "network" {
        organization = "first-hcp-org"
        workspace = "network_project"
        }

output "network_public_ips" {
   description = "List of public ips fetched from security project"
   value = data.tfe_outputs.network.values.public_ips
}
