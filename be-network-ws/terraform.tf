terraform {
  cloud {
    hostname = "app.terraform.io"
    organization = "hay-tfc"
    workspaces {
      name = "be-network-ws"
    }
  }
}

