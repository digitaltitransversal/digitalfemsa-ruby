# DigitalFemsa::CheckoutOrderTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | ISO 4217 currency code for the order. |  |
| **customer_info** | [**CheckoutOrderTemplateCustomerInfo**](CheckoutOrderTemplateCustomerInfo.md) |  | [optional] |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | Products to buy. Each contains unit price and quantity used to calculate the order total. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary key-value data attached to the order for internal use. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CheckoutOrderTemplate.new(
  currency: MXN,
  customer_info: null,
  line_items: null,
  metadata: {&quot;key&quot;:&quot;value&quot;}
)
```

