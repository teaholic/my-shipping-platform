# User Story #4

## As a shipping platform manager, 
## I want to configure following input types:
* issue_sender_papers : bool
* issue_recipient_papers : bool

## So that the following shipping arrangements are created on the platform
### Recipient-Country Transportation booking
- type in [eu-parcel-to-tuscany, eu-parcel-to-campania, eu-letter-to-campania-ischia] && issue_recipient_papers ? truck_transportation_booking
- type in [eu-letter-to-sicily, eu-letter-to-campania-ischia] && issue_recipient_papers ? ship_transportation_booking
### Sender-Country Transportation booking
- type in [eu-parcel-to-tuscany, eu-letter-to-sicily, eu-parcel-to-campania, eu-letter-to-campania-ischia, extraeu-letter-to-sardinia] && issue_sender_papers ? truck_transportation_booking
- type overseas-parcel-to-piedmont && issue_sender_papers ? ship_transportation_booking