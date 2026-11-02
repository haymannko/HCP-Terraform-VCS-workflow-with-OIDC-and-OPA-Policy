terraform {
  cloud {
    hostname = "app.terraform.io"
    organization = "hay-tfc"
    workspaces {
      name = "peering-ws"
    }
  }
}

