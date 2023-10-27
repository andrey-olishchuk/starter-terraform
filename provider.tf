terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
    google = {
      source = "hashicorp/google"
      version = "5.3.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  owner = "entrypoint-me"
}

provider "google" {
  project     = "dorpm-381708"
  region      = "europe-west4"
}
