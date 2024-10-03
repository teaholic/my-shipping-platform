# User Story #3

## As a shipping platform manager, 
## I want to configure following input types:
* overseas-parcel-to-piedmont
* extraeu-letter-to-sardinia

## So that the following shipping arrangements are created on the platform
### Storage booking
- type in [eu-parcel-to-tuscany, eu-parcel-to-campania] ? large_storage_booking
- type in [eu-letter-to-sicily, eu-letter-to-campania-ischia] ? small_storage_booking
### Recipient-Country Transportation booking
- type in [eu-parcel-to-tuscany, eu-parcel-to-campania, eu-letter-to-campania-ischia] ? truck_transportation_booking
- type in [eu-letter-to-sicily, eu-letter-to-campania-ischia] ? ship_transportation_booking
### Sender-Country Transportation booking
- type in [eu-parcel-to-tuscany, eu-letter-to-sicily, eu-parcel-to-campania, eu-letter-to-campania-ischia, extraeu-letter-to-sardinia] ? truck_transportation_booking
- type overseas-parcel-to-piedmont ? ship_transportation_booking