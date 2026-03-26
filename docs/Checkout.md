# DigitalFemsa::Checkout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Payment link name. |  |
| **type** | **String** | Checkout type. |  |
| **recurrent** | **Boolean** | false: single use. true: multiple payments |  |
| **payments_limit_count** | **Integer** | Required when &#x60;recurrent&#x60; is true. Maximum number of payments allowed through the link. | [optional] |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Payment methods available in the payment link. |  |
| **needs_shipping_contact** | **Boolean** | This flag allows you to fill in the shipping information at checkout. |  |
| **starts_at** | **Integer** | Start time for the link. Unix timestamp in seconds. | [optional] |
| **expires_at** | **Integer** | Expiration time for the link (Unix timestamp in seconds). Valid range is between 2 and 365 days (calculated from the next day of creation at 00:01).  |  |
| **can_not_expire** | **Boolean** | If true, the link does not expire. | [optional] |
| **order_template** | [**CheckoutOrderTemplate**](CheckoutOrderTemplate.md) |  |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::Checkout.new(
  name: Payment Link Name,
  type: PaymentLink,
  recurrent: false,
  payments_limit_count: null,
  allowed_payment_methods: [&quot;cash&quot;],
  needs_shipping_contact: false,
  starts_at: 1680224924,
  expires_at: 1680397724,
  can_not_expire: false,
  order_template: null
)
```

