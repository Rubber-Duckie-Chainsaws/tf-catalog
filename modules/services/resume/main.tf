module "s3" {
  source = "git@github.com:rubber-duckie-chainsaws/tf-primitives//aws/s3/bucket?rev=main"

  name = "resume-content"
}
