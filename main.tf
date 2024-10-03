locals {
  item = var.delivery_type == "eu-parcel-to-tuscany" ? "parcel" : "letter"
  storage_booking = var.delivery_type == "eu-parcel-to-tuscany" ? "large_storage_booking" : "small_storage_booking"
  transportation_booking = var.delivery_type == "eu-parcel-to-tuscany" ? "truck_transportation_booking" : "ship_transportation_booking"
}