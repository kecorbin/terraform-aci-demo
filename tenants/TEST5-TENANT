resource "aci_tenant" "TEST5-tenant" {
  name        = "TEST5-tenant"
  description = "This tenant is created by terraform"
}

resource "aci_application_profile" "test-app" {
  tenant_dn   = "${aci_tenant.TEST5-tenant.id}"
  name        = "TEST5-app1"
  description = "This app profile is created by terraform"
}
