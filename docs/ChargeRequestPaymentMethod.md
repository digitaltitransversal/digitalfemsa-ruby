# DigitalFemsa::ChargeRequestPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Integer** | Method expiration date as unix timestamp (applies to some payment methods, e.g. cash). | [optional] |
| **type** | **String** |  |  |
| **payment_source_id** | **String** | Identifier of a saved payment source to be used for this charge (if applicable). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ChargeRequestPaymentMethod.new(
  expires_at: 1789928542,
  type: cash,
  payment_source_id: src_2tLkkyfMPh6v7pFry
)
```

