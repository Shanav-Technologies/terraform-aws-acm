provider "aws" {
  region = "ca-central-1"
}

locals {
  domain = ""
}

module "acm" {
  source                    = "./../../"
  name                      = "certificate"
  environment               = "test"
  domain_name               = "navneetbishnoi.com"
  subject_alternative_names = ["*.${local.domain}", "www.${local.domain}"]
}
