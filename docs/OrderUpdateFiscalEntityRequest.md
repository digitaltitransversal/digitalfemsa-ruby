# DigitalFemsa::OrderUpdateFiscalEntityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**FiscalEntityAddress**](FiscalEntityAddress.md) |  |  |
| **email** | **String** | Email of the fiscal entity | [optional] |
| **name** | **String** | Name of the fiscal entity | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary key-value data associated with the fiscal entity for your internal use. Keys should be strings; values can be any JSON value.  | [optional] |
| **phone** | **String** | Phone of the fiscal entity | [optional] |
| **tax_id** | **String** | Tax ID of the fiscal entity | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderUpdateFiscalEntityRequest.new(
  address: null,
  email: test@gmail.com,
  name: Femsa Inc,
  metadata: null,
  phone: +525511223344,
  tax_id: AAA010101AAA
)
```

