resource "aci_tenant" "TESTB-tenant" {
  name        = "TESTB-tenant"
  description = "This tenant is created by terraform"
}

resource "aci_application_profile" "testb-app" {
  tenant_dn   = "${aci_tenant.TESTB-tenant.id}"
  name        = "TESTB-app1"
  description = "This app profile is created by terraform"
}
