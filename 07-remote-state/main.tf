terraform {
  backend "s3" {
    bucket = "terraform.d81"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}
