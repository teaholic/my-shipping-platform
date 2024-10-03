# This file defines test cases

run "setup_eu-parcel-to-tuscany" {

  # Given / Arrange
  variables {
    expected_item = "parcel"
    delivery_type = "eu-parcel-to-tuscany"
  }

  # When / Act
  module {
    source = "./."
  }

# Then / Assert
  assert {
    condition =  output.item == var.expected_item
    error_message = "Error: ${var.delivery_type} should ship a ${var.expected_item}. Actual shipped item: ${output.item}"
  }
}