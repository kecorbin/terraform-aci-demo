resource "aci_tenant" "TESTA-tenant" {
  name        = "TESTA-tenant"
  description = "This tenant is created by terraform"
}

resource "aci_application_profile" "test-app" {
  tenant_dn   = "${aci_tenant.TESTA-tenant.id}"
  name        = "TESTA-app1"
  description = "This app profile is created by terraform"
}
