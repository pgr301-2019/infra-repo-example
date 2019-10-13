terraform {
  backend "s3" {
    bucket = "pgr301bucket"
    key    = "glenn.bech/terraform.tfstate"
    region = "eu-north-1"
  }
}

provider "statuscake" {
  version = "1.0.0"
  username = "glennbechgmailcom"
}