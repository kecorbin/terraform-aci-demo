resource "aci_tenant" "TESTC-tenant" {
  name        = "TESTC-tenant"
  description = "This tenant is created by terraform"
}

resource "aci_application_profile" "testc-app" {
  tenant_dn   = "${aci_tenant.TESTC-tenant.id}"
  name        = "TESTC-app1"
  description = "This app profile is created by terraform"
}
