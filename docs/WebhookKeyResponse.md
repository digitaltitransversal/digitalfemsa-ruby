# DigitalFemsa::WebhookKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the webhook key |  |
| **object** | **String** | Object name, value is webhook_key |  |
| **active** | **Boolean** | Indicates if the webhook key is active |  |
| **livemode** | **Boolean** | Indicates if the webhook key is in live mode |  |
| **created_at** | **Integer** | Unix timestamp in seconds with the creation date of the webhook key |  |
| **deactivated_at** | **Integer** | Unix timestamp in seconds when the webhook key was deactivated (if applicable). | [optional] |
| **deleted** | **Boolean** | Present only when the webhook key is deleted. | [optional] |
| **public_key** | **String** | Public key to be used in the webhook. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::WebhookKeyResponse.new(
  id: 62730ba6fb7dfd6a712f118e,
  object: webhook_key,
  active: true,
  livemode: false,
  created_at: 1577836800,
  deactivated_at: null,
  deleted: null,
  public_key: -----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqULpUc6D6mSAq5a0yLY/\n...\n-----END PUBLIC KEY-----\n
)
```

