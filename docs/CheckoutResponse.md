# DigitalFemsa::CheckoutResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** |  | [optional] |
| **can_not_expire** | **Boolean** |  | [optional] |
| **emails_sent** | **Integer** |  | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **failure_url** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **livemode** | **Boolean** |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **name** | **String** | Payment link name |  |
| **needs_shipping_contact** | **Boolean** |  | [optional] |
| **object** | **String** |  |  |
| **paid_payments_count** | **Integer** |  | [optional] |
| **payments_limit_count** | **Integer** |  | [optional] |
| **recurrent** | **Boolean** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **sms_sent** | **Integer** |  | [optional] |
| **starts_at** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |
| **success_url** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CheckoutResponse.new(
  allowed_payment_methods: [&quot;cash&quot;],
  can_not_expire: false,
  emails_sent: 0,
  expires_at: 1680397724,
  failure_url: https://pay.femsa.com/failure,
  id: b0bf16c4-18b9-445e-ba24-01604f329dbf,
  livemode: true,
  metadata: {&quot;key&quot;:&quot;value&quot;},
  name: Payment Link Name 1594138857,
  needs_shipping_contact: false,
  object: checkout,
  paid_payments_count: 0,
  payments_limit_count: 5,
  recurrent: false,
  slug: b0bf16c418b9445eba2401604f329dbf,
  sms_sent: 0,
  starts_at: 1677650400,
  status: Issued,
  success_url: https://pay.femsa.com/success,
  type: PaymentLink,
  url: https://pay.femsa.com/link/b0bf16c418b9445eba2401604f329dbf
)
```

