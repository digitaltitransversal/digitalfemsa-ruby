# DigitalFemsa::UpdateOrderTaxRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to be collected for tax in cents |  |
| **description** | **String** | Description or tax name |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::UpdateOrderTaxRequest.new(
  amount: 100,
  description: VAT,
  metadata: {&quot;key&quot;:&quot;value&quot;}
)
```

