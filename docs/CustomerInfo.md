# DigitalFemsa::CustomerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **email** | **String** |  |  |
| **phone** | **String** |  |  |
| **corporate** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CustomerInfo.new(
  customer_id: cus_23874283647,
  name: DevTest,
  email: test@femsa.com,
  phone: 5522997233,
  corporate: null,
  object: customer_info
)
```

