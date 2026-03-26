# DigitalFemsa::CustomerFiscalEntitiesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**CustomerAddress**](CustomerAddress.md) |  |  |
| **tax_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CustomerFiscalEntitiesRequest.new(
  address: null,
  tax_id: null,
  name: Femsa,
  email: null,
  phone: null,
  metadata: null
)
```

