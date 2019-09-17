terraform {
  backend "s3" {
    encrypt = true
    bucket = "sunnyvalepoc-terraform-state-storage"
    dynamodb_table = "terraform-state-locking"
    key    = "state-lock-storage.keypath"
    region = "us-east-1"

  }
}
