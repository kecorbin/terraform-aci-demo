
provider "aci" {
  # credentials
  url      = var.aci_url
  username = var.aci_username
  password = var.aci_password
  insecure = true
  // proxy_url = "https://proxy_server:proxy_port"
}

module tenants {
  source = "./tenants"
}
