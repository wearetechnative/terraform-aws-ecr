terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.21.0"
    }
  }
}

provider "aws" {}

module "ecr" {
  source = "./.."

  name            = "very-unique-ecr-name-202303291321"
  num_keep_images = 10
}
