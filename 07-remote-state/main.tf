terraform {
  backend "s3" {
    bucket = "terraform.d81aq"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}


