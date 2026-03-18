# DigitalFemsa::ChargeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **livemode** | **Boolean** |  |  |
| **created_at** | **Integer** |  |  |
| **currency** | **String** |  |  |
| **failure_code** | **String** |  | [optional] |
| **failure_message** | **String** |  | [optional] |
| **channel** | [**ChargeResponseChannel**](ChargeResponseChannel.md) |  | [optional] |
| **payment_method** | [**ChargeResponsePaymentMethod**](ChargeResponsePaymentMethod.md) |  |  |
| **object** | **String** |  |  |
| **device_fingerprint** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **is_refundable** | **Boolean** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **amount** | **Integer** |  |  |
| **paid_at** | **Integer** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **order_id** | **String** |  | [optional] |
| **refunds** | [**ChargeResponseRefunds**](ChargeResponseRefunds.md) |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ChargeResponse.new(
  id: 696a682e1ef5ca00015698b7,
  livemode: true,
  created_at: 1768581166,
  currency: MXN,
  failure_code: null,
  failure_message: null,
  channel: null,
  payment_method: null,
  object: charge,
  device_fingerprint: 6FR3chaU4Y1nGAW5NAGd1rcjAKa142Ba,
  description: Payment from order,
  is_refundable: false,
  reference_id: null,
  status: expired,
  amount: 600000,
  paid_at: null,
  customer_id: ,
  order_id: ord_2zNwzJrfNC24uQUzq,
  refunds: null
)
```

