# DigitalFemsa::ProductDataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the item. It will be displayed in the order. |  |
| **unit_price** | **Integer** | The price of the item in cents. |  |
| **quantity** | **Integer** | The quantity of the item in the order. |  |
| **sku** | **String** | The stock keeping unit for the item. It is used to identify the item in the order. | [optional] |
| **brand** | **String** | The brand of the item. | [optional] |
| **description** | **String** | Short description of the item | [optional] |
| **tags** | **Array&lt;String&gt;** | List of tags for the item. It is used to identify the item in the order. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary key-value data for your internal use. Keys should be strings; values can be any JSON value.  | [optional] |
| **id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **parent_id** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ProductDataResponse.new(
  name: Box of Cohiba,
  unit_price: 20000,
  quantity: 1,
  sku: XYZ12345,
  brand: Cohiba,
  description: Imported From Mex.,
  tags: null,
  metadata: {key&#x3D;value},
  id: null,
  object: null,
  parent_id: null
)
```

