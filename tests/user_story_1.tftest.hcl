run "shipping_arrangements_for_an_eu-parcel-to-tuscany" {

  # Given / Arrange
  variables {
    expected_storage_booking = "large_storage_booking"
    expected_transportation_booking = "truck_transportation_booking"
    delivery_type = "eu-parcel-to-tuscany"
  }

  # When / Act
  module {
    source = "./."
  }

# Then / Assert
  assert {
    condition =  output.storage_booking == var.expected_storage_booking
    error_message = "Error: ${var.delivery_type} should have a ${var.expected_storage_booking} arranged. Actual shipping arrangement: ${output.transportation_booking}"
  }

  assert {
    condition =  output.transportation_booking == var.expected_transportation_booking
    error_message = "Error: ${var.delivery_type} should have a ${var.expected_storage_booking} arranged. Actual shipping arrangement: ${output.storage_booking}"
  }
}

run "shipping_arrangements_for_an_eu-letter-to-sicily" {

  # Given / Arrange
  variables {
    expected_storage_booking = "small_storage_booking"
    expected_transportation_booking = "ship_transportation_booking"
    delivery_type = "eu-letter-to-sicily"
  }

  # When / Act
  module {
    source = "./."
  }

# Then / Assert
  assert {
    condition =  output.storage_booking == var.expected_storage_booking
    error_message = "Error: ${var.delivery_type} should have a ${var.expected_storage_booking} arranged. Actual shipping arrangement: ${output.transportation_booking}"
  }

  assert {
    condition =  output.transportation_booking == var.expected_transportation_booking
    error_message = "Error: ${var.delivery_type} should have a ${var.expected_storage_booking} arranged. Actual shipping arrangement: ${output.storage_booking}"
  }

}