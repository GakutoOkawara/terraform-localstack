module "s3" {
  source = "./s3"

  bucket_name = "sample-bucket"
}

module "system_manager" {
  source = "./system-manager/"

  sample_key = var.sample_key
}

module "step_functions" {
  source = "./step-functions"
}