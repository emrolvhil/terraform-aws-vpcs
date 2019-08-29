resource "aws_s3_bucket" "terraform_state_s3_bucket" {
    bucket = "sunnyvalepoc-terraform-state-storage"

    versioning {
      enabled = true
    }
 
    lifecycle {
      prevent_destroy = true
    }
 
    tags = {
      Name = "Terraform State File Storage"
    }      
}
