# DigitalFemsa::UpdateProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **unit_price** | **Integer** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::UpdateProduct.new(
  name: Box of Cohiba S1s,
  unit_price: 20000,
  quantity: 1,
  sku: null,
  brand: null,
  description: null,
  tags: null,
  metadata: null
)
```

