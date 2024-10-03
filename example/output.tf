output "eu-parcel-to-tuscany_shipped_item" {
  value = module.shipping-an-eu-parcel-to-tuscany.item

  precondition {
    condition = module.shipping-an-eu-parcel-to-tuscany.item == "parcel"
    error_message = "Error: eu-parcel-to-tuscany should ship a parcel. Actual shipped item: ${module.shipping-an-eu-parcel-to-tuscany.item}"
  }
}