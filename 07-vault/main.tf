provider "vault" {
  address = "http://vault-internal.rdevopsb83.online:8200"
  token = var.vault_token
}

variable "vault_token" {}

data "vault_kv_secret" "secret_data" {
  path = "test/data/demo"
}

resource "local_file" "test" {
  filename = "/tmp/1"
  content = data.vault_kv_secret.secret_data.data
}



