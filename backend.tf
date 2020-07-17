terraform {
  backend "s3" {
    bucket = "cloudpassionstatefile"
    key    = "global/dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table ="cloudpassion_tfstate_lock"
    encrypt        = true
  }
}
