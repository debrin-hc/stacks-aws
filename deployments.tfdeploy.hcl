# store "varset" "tags" {
#   id       = "varset-q4ixKh11RzfNgKny"
#   category = "terraform"
# }

store "varset" "tokens" {
  id       = "varset-ovEaNRDVsTCvs1KM"
  category = "env"
}

# identity_token "aws" {
#   audience = ["aws.workload.identity"]
# }

deployment "dev" {
  inputs = {
    region         = ephemeralasnull(store.varset.tokens.AWS_REGION)
    # identity_token = identity_token.aws.jwt
    # role_arn       = "arn:aws:iam::692859936775:role/stacks-tfc_organization-tfc_project"
    access_key    = store.varset.tokens.AWS_ACCESS_KEY_ID
    secret_key    = store.varset.tokens.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.tokens.AWS_SESSION_TOKEN
    # default_tags   = store.varset.tags.default_tags
  }
}
