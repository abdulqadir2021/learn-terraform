terraform {
  backend "s3" {
    bucket = "terraform-aq26"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}
