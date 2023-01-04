terraform {
  source = "git::https://github.com/Omqarrr/aws-vpc-network-terraform.git//modules/vpc"
}
inputs = {
  region_name = "us-east-1" #mumbai-region
  public_az   = ["us-east-1a", "us-east-1b"]
  private_az  = ["us-east-1a", "us-east-1b"]
  environment = "Test-Dev"
}
include "root" {
  path = find_in_parent_folders()
}
