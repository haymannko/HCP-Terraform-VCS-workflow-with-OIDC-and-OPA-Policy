data "terraform_remote_state" "backend_network" {
  backend = "remote"

  config = {
    organization = "hay-tfc"

    workspaces = {
      name = "be-network-ws"
      
    }
  }
}

data "terraform_remote_state" "frontend_network" {
  backend = "remote"

  config = {
    organization = "hay-tfc"

    workspaces = {
      name = "fe-network-ws"
    }
  }

}

data "terraform_remote_state" "backend_security" {
  backend = "remote"

  config = {
    organization = "hay-tfc"

    workspaces = {
      name = "be-security-ws"
    }
  }
}
