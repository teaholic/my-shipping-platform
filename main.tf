locals {
  item = var.delivery_type == "eu-parcel-to-tuscany" ? "parcel" : "none"
}