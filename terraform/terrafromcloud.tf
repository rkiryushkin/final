terraform {
  backend "remote" {
    organization = "Itea"

    workspaces {
      name = "final"
    }
  }
}