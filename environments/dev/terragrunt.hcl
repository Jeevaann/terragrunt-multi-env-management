terraform {
  source = "git::https://github.com/Omqarrr/aws-vpc-network-terraform.git//modules/vpc"
}
inputs = {
  region_name = "ap-south-1" #mumbai-region
  public_az   = ["ap-south-1a", "ap-south-1b"]
  private_az  = ["ap-south-1a", "ap-south-1b"]
  environment = "Test-Dev"
}
include "root" {
  path = find_in_parent_folders()
}
