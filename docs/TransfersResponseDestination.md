# DigitalFemsa::TransfersResponseDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | Unique identifier of the payee. |  |
| **id** | **String** | Unique identifier of the payout method. |  |
| **created_at** | **Integer** | Date and time of creation of the payout method in Unix format. |  |
| **object** | **String** | Object name, present for bank transfer destination. | [optional] |
| **type** | **String** | Destination type. | [optional] |
| **last4** | **String** | Last 4 digits of the destination account number. | [optional] |
| **account_holder_name** | **String** | Name of the account holder. | [optional] |
| **bank** | **String** | Name of the bank. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::TransfersResponseDestination.new(
  payee_id: payee_2icdDewRxDENBos85,
  id: pytmtd_2ide3qwTdDvNBosEC,
  created_at: 1553273553,
  object: destination,
  type: bank_transfer,
  last4: 6764,
  account_holder_name: John Doe,
  bank: BBVA Bancomer
)
```

