terraform {
  required_version =  "> 0.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

}
}
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2ZFZX3LKIH5ZHG62"
  secret_key = "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"
}
