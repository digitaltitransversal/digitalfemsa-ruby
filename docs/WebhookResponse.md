# DigitalFemsa::WebhookResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the webhook. |  |
| **object** | **String** | Object name, which is webhook. |  |
| **url** | **String** | The URL where events will be delivered. |  |
| **status** | **String** | Current delivery status of the webhook. |  |
| **subscribed_events** | **Array&lt;String&gt;** | List of event types the webhook is subscribed to. |  |
| **synchronous** | **Boolean** | Indicates whether the webhook uses synchronous delivery behavior. |  |
| **description** | **String** | Optional description of the webhook. | [optional] |
| **livemode** | **Boolean** | Indicates whether the webhook is in live mode or test mode. |  |
| **active** | **Boolean** | Indicates whether the webhook is active. |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::WebhookResponse.new(
  id: 6307a60c41de27127515a575,
  object: webhook,
  url: https://username:password@mockoon.stg.femsa.io/payments-api/cash/merchant_approval,
  status: listening,
  subscribed_events: [&quot;charge.created&quot;,&quot;charge.paid&quot;,&quot;charge.under_fraud_review&quot;,&quot;charge.fraudulent&quot;,&quot;charge.refunded&quot;,&quot;charge.preauthorized&quot;,&quot;charge.declined&quot;,&quot;charge.canceled&quot;,&quot;charge.reversed&quot;,&quot;charge.pending_confirmation&quot;],
  synchronous: false,
  description: My integrations webhook,
  livemode: true,
  active: true
)
```

