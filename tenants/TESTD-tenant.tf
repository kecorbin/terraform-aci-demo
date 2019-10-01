resource "aci_tenant" "TESTD-tenant" {
  name        = "TESTD-tenant"
  description = "This tenant is created by terraform"
}

resource "aci_application_profile" "testd-app" {
  tenant_dn   = "${aci_tenant.TESTD-tenant.id}"
  name        = "TESTD-app1"
  description = "This app profile is created by terraform"
}
