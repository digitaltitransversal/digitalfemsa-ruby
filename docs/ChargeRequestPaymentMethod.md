# DigitalFemsa::ChargeRequestPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Payment method type. |  |
| **expires_at** | **Integer** | Method expiration date as unix timestamp (applies to some payment methods, e.g. cash). | [optional] |
| **payment_source_id** | **String** | Identifier of a saved payment source to be used for this charge (if applicable). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ChargeRequestPaymentMethod.new(
  type: cash,
  expires_at: 1789928542,
  payment_source_id: src_2tLkkyfMPh6v7pFry
)
```

