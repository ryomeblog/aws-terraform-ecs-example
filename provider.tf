provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = "dev"
      Project     = "ecs-example"
      Terraform   = "true"
    }
  }
}