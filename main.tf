provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-august-project" {
  bucket = "terraform-august-project"
}
resource "aws_s3_bucket" "terraform-august-project1a" {
  bucket = "terraform-august-project1a"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-august-project"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}