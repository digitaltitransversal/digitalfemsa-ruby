# DigitalFemsa::ApiKeyUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates whether the API key is active. | [optional] |
| **description** | **String** | A name or brief explanation of what this API key is used for. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ApiKeyUpdateRequest.new(
  active: true,
  description: online store
)
```

