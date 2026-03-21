data "terraform_remote_state" "network" {
    backend = "remote"

    config = {
        organization = "org-kplabs"

        workspaces = {
          name = "network-project"
        }
    }
}

output "network_public_ips" {
   description = "List of public ips fetched from security project"
   value = data.terraform_remote_state.network.outputs.public_ips
}
