resource "aci_tenant" "HASHI-tenant" {
  name        = "HASHI-tenant"
  description = "This tenant is created by terraform"
}

resource "aci_application_profile" "testb-app" {
  tenant_dn   = "${aci_tenant.HASHI-tenant.id}"
  name        = "HASHI-app1"
  description = "This app profile is created by terraform"
}
