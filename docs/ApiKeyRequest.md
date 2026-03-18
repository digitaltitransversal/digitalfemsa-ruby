# DigitalFemsa::ApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A name or brief explanation of what this API key is used for. | [optional] |
| **role** | **String** | Defines the type of API key to create. Only \&quot;private\&quot; is supported for creation. A \&quot;public\&quot; API key already exists by default per company/environment.  |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ApiKeyRequest.new(
  description: online store,
  role: private
)
```

