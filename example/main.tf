# Arrange / Given
locals {
  delivery_type = "eu-parcel-to-tuscany"
  expected_item = "parcel"
}

# Act / When
module "shipping-an-eu-parcel-to-tuscany" {

  source = "../"

  delivery_type = local.delivery_type
}

# Assert / Then
output "eu-parcel-to-tuscany_shipped_item" {
  value = module.shipping-an-eu-parcel-to-tuscany.item

  precondition {
    condition = module.shipping-an-eu-parcel-to-tuscany.item == local.expected_item
    error_message = "Error: ${local.delivery_type} should ship a ${local.expected_item}. Actual shipped item: ${module.shipping-an-eu-parcel-to-tuscany.item}"
  }
}