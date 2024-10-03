# This file defines test cases

run "shipping_arrangements_for_an_eu-parcel-to-tuscany" {

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

run "shipping_arrangements_for_an_eu-letter-to-sicily" {

  # Given / Arrange
  variables {
    expected_item = "letter"
    delivery_type = "eu-letter-to-sicily"
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