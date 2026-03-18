# DigitalFemsa::Checkout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Those are the payment methods that will be available for the link |  |
| **expires_at** | **Integer** | It is the time when the link will expire. It is expressed in seconds since the Unix epoch. The valid range is from 2 to 365 days (the valid range will be taken from the next day of the creation date at 00:01 hrs)  |  |
| **name** | **String** | Payment link name |  |
| **needs_shipping_contact** | **Boolean** | This flag allows you to fill in the shipping information at checkout. | [optional] |
| **order_template** | [**CheckoutOrderTemplate**](CheckoutOrderTemplate.md) |  |  |
| **payments_limit_count** | **Integer** | It is the number of payments that can be made through the link. | [optional] |
| **recurrent** | **Boolean** | false: single use. true: multiple payments |  |
| **type** | **String** | It is the type of link that will be created. It must be a valid type. |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::Checkout.new(
  allowed_payment_methods: [&quot;cash&quot;],
  expires_at: 1680397724,
  name: Payment Link Name 1594138857,
  needs_shipping_contact: false,
  order_template: null,
  payments_limit_count: 5,
  recurrent: false,
  type: PaymentLink
)
```

