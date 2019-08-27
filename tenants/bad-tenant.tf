resource "aci_tenant" "bad-tenant" {
  name        = "bad-tenant"
  description = "This tenant is created by terraform"
}

resource "aci_application_profile" "bad-app" {
  tenant_dn   = "${aci_tenant.bad-tenant.id}"
  name        = "bad-app1"
  description = "This app profile is created by terraform"
}
