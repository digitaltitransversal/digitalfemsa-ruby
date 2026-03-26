# DigitalFemsa::DeleteApiKeysResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the api key is active | [optional] |
| **created_at** | **Integer** | Unix timestamp in seconds of when the api key was created | [optional] |
| **description** | **String** | A name or brief explanation of what this api key is used for | [optional] |
| **livemode** | **Boolean** | Indicates if the api key is in production | [optional] |
| **prefix** | **String** | The first few characters of the authentication_token | [optional] |
| **id** | **String** | Unique identifier of the api key | [optional] |
| **object** | **String** | Object name, value is &#39;api_key&#39; | [optional] |
| **deleted** | **Boolean** |  | [optional] |
| **role** | **String** | Indicates if the api key is private or public | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::DeleteApiKeysResponse.new(
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

