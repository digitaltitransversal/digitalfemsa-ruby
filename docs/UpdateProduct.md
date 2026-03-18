# DigitalFemsa::UpdateProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **unit_price** | **Integer** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::UpdateProduct.new(
  description: null,
  sku: null,
  name: Box of Cohiba S1s,
  unit_price: 20000,
  quantity: 1,
  tags: null,
  brand: null,
  metadata: null
)
```

