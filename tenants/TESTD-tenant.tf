resource "aci_tenant" "cisco-tenant" {
  name        = "cisco-tenant"
  description = "This tenant is created by terraform"
}

resource "aci_application_profile" "cisco-app" {
  tenant_dn   = "${aci_tenant.cisco-tenant.id}"
  name        = "TESTB-app1"
  description = "This app profile is created by terraform"
}
