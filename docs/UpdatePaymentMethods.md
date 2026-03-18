# DigitalFemsa::UpdatePaymentMethods

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | [**UpdatePaymentMethodsExpiresAt**](UpdatePaymentMethodsExpiresAt.md) |  | [optional] |
| **amount** | [**UpdatePaymentMethodsAmount**](UpdatePaymentMethodsAmount.md) |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::UpdatePaymentMethods.new(
  expires_at: null,
  amount: null,
  type: oxxo_recurrent
)
```

