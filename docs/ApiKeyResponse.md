# DigitalFemsa::ApiKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the API key |  |
| **object** | **String** | Object name, value is &#39;api_key&#39; |  |
| **active** | **Boolean** | Indicates if the API key is active |  |
| **livemode** | **Boolean** | Indicates if the API key is in production |  |
| **role** | **String** | Indicates if the API key is private or public |  |
| **description** | **String** | A name or brief explanation of what this API key is used for | [optional] |
| **prefix** | **String** | The first few characters of the authentication_token |  |
| **created_at** | **Integer** | Unix timestamp in seconds of when the API key was created |  |
| **updated_at** | **Integer** | Unix timestamp in seconds of when the API key was last updated |  |
| **deactivated_at** | **Integer** | Unix timestamp in seconds of when the API key was deactivated | [optional] |
| **deleted** | **Boolean** | Indicates if the API key was deleted | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ApiKeyResponse.new(
  id: 64625cc9f3e02c00163f5e4d,
  object: api_key,
  active: true,
  livemode: false,
  role: private,
  description: online store,
  prefix: key_rp,
  created_at: 1684167881,
  updated_at: 1684167923,
  deactivated_at: null,
  deleted: false
)
```

