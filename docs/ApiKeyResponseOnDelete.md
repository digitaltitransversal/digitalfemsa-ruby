# DigitalFemsa::ApiKeyResponseOnDelete

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the api key is active |  |
| **created_at** | **Integer** | Unix timestamp in seconds of when the api key was created |  |
| **description** | **String** | A name or brief explanation of what this api key is used for |  |
| **livemode** | **Boolean** | Indicates if the api key is in production |  |
| **prefix** | **String** | The first few characters of the authentication_token |  |
| **id** | **String** | Unique identifier of the api key |  |
| **object** | **String** | Object name, value is &#39;api_key&#39; |  |
| **deleted** | **Boolean** | Indicates if the api key was deleted |  |
| **role** | **String** | Indicates if the api key is private or public |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ApiKeyResponseOnDelete.new(
  active: false,
  created_at: 1684167881,
  description: online store,
  livemode: false,
  prefix: key_rp,
  id: 64625cc9f3e02c00163f5e4d,
  object: api_key,
  deleted: true,
  role: private
)
```

