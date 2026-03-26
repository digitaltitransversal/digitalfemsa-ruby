# DigitalFemsa::ChargeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **channel** | [**ChargeResponseChannel**](ChargeResponseChannel.md) |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **device_fingerprint** | **String** |  | [optional] |
| **failure_code** | **String** |  | [optional] |
| **failure_message** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |
| **order_id** | **String** |  | [optional] |
| **paid_at** | **Integer** |  | [optional] |
| **payment_method** | [**ChargeResponsePaymentMethod**](ChargeResponsePaymentMethod.md) |  | [optional] |
| **reference_id** | **String** | Reference ID of the charge | [optional] |
| **refunds** | [**ChargeResponseRefunds**](ChargeResponseRefunds.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **is_refundable** | **Boolean** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ChargeResponse.new(
  amount: 600000,
  channel: null,
  created_at: 1768581166,
  currency: MXN,
  customer_id: null,
  description: Payment from order,
  device_fingerprint: 6FR3chaU4Y1nGAW5NAGd1rcjAKa142Ba,
  failure_code: suspected_fraud,
  failure_message: Este cargo ha sido declinado porque el comportamiento del comprador es sospechoso.,
  id: 696a682e1ef5ca00015698b7,
  livemode: true,
  object: null,
  order_id: ord_2zNwzJrfNC24uQUzq,
  paid_at: null,
  payment_method: null,
  reference_id: ref_2tN73UdUSNrYRPD9r,
  refunds: null,
  status: pending_payment,
  is_refundable: false
)
```

