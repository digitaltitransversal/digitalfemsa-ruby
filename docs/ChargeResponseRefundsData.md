# DigitalFemsa::ChargeResponseRefundsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **auth_code** | **String** |  | [optional] |
| **created_at** | **Integer** |  |  |
| **expires_at** | **Integer** | refund expiration date | [optional] |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **status** | **String** | refund status | [optional] |
| **payout_id** | **String** |  | [optional] |
| **reference** | **String** | payout reference for oxxo stores | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ChargeResponseRefundsData.new(
  amount: -15000,
  auth_code: 867372,
  created_at: 1678226878,
  expires_at: 1678226878,
  id: 6407b5bee1329a000175ba11,
  object: refund,
  status: pending,
  payout_id: 6fca054a-8519-4c43-971e-cea35cc519bb,
  reference: 12002000778626
)
```

