# DigitalFemsa::OrderRefundRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount to refund. If not provided, the API refunds the refundable amount of the selected charge. |  |
| **charge_id** | **String** | Charge ID to refund. If not provided, the API selects a refundable charge from the order. | [optional] |
| **reason** | **String** | Refund reason. If not provided, the API uses a default reason. |  |
| **expires_at** | **Integer** | Expiration timestamp for cash refunds (must be within the allowed range configured by the API). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderRefundRequest.new(
  amount: 500,
  charge_id: 6976b2e3c4418f00012943c5,
  reason: suspected_fraud,
  expires_at: 1553273553
)
```

