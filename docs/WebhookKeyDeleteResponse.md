# DigitalFemsa::WebhookKeyDeleteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the webhook key |  |
| **object** | **String** | Object name, value is webhook_key |  |
| **active** | **Boolean** | Indicates if the webhook key is active |  |
| **livemode** | **Boolean** | Indicates if the webhook key is in live mode |  |
| **created_at** | **Integer** | Unix timestamp in seconds with the creation date of the webhook key |  |
| **deactivated_at** | **Integer** | Unix timestamp in seconds when the webhook key was deactivated (if applicable). | [optional] |
| **deleted** | **Boolean** | Indicates if the webhook key is deleted |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::WebhookKeyDeleteResponse.new(
  id: 62730ba6fb7dfd6a712f118e,
  object: webhook_key,
  active: true,
  livemode: false,
  created_at: 1577836800,
  deactivated_at: 1577836800,
  deleted: true
)
```

