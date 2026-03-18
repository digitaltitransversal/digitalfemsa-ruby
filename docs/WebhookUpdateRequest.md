# DigitalFemsa::WebhookUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Webhook endpoint URL. Local URLs are not allowed. | [optional] |
| **subscribed_events** | **Array&lt;String&gt;** | List of event types the webhook is subscribed to. | [optional] |
| **events** | **Array&lt;String&gt;** | Alias for subscribed_events. | [optional] |
| **synchronous** | **Boolean** | Indicates whether the webhook uses synchronous delivery behavior. | [optional][default to false] |
| **active** | **Boolean** | Activates or deactivates the webhook. | [optional] |
| **description** | **String** | Optional description of the webhook. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::WebhookUpdateRequest.new(
  url: https://webhook.site/89277eaa-a8e4-4306-8dc5-f55c80703dc8,
  subscribed_events: null,
  events: null,
  synchronous: false,
  active: true,
  description: My integrations webhook
)
```

