# DigitalFemsa::EventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Integer** |  |  |
| **data** | **Hash&lt;String, Object&gt;** |  |  |
| **id** | **String** |  |  |
| **livemode** | **Boolean** |  |  |
| **object** | **String** |  |  |
| **type** | **String** |  |  |
| **webhook_logs** | [**Array&lt;WebhookLog&gt;**](WebhookLog.md) |  |  |
| **webhook_status** | **String** |  |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::EventResponse.new(
  created_at: 1661445644,
  data: {&quot;data&quot;:{&quot;object&quot;:{&quot;action&quot;:&quot;ping&quot;,&quot;livemode&quot;:true},&quot;previous_attributes&quot;:{}}},
  id: 6307a60c41de27127515a575,
  livemode: true,
  object: event,
  type: webhook_ping,
  webhook_logs: null,
  webhook_status: successful
)
```

