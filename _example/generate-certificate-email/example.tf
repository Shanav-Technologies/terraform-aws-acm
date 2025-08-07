provider "aws" {
  region = "ca-central-1"
}

module "acm" {
  source                    = "./../../"
  name                      = "certificate"
  environment               = "test"
  validate_certificate      = false
  domain_name               = ""
  subject_alternative_names = ["Shanav-Technologies"]
  validation_method         = "EMAIL"
}
