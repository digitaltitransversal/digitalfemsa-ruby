# DigitalFemsa::WebhookLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_attempts** | **Integer** |  |  |
| **id** | **String** |  |  |
| **last_attempted_at** | **Integer** |  |  |
| **last_http_response_status** | **Integer** |  |  |
| **object** | **String** |  | [optional] |
| **response_data** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **url** | **String** |  |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::WebhookLog.new(
  failed_attempts: 10,
  id: webhl_2svd2sh6GbqzyWBNZ,
  last_attempted_at: 1669651274,
  last_http_response_status: 200,
  object: webhook_log,
  response_data: {&quot;amount&quot;:3000,&quot;payable&quot;:true},
  url: https://username:password@mockoon.stg.femsa.io/payments-api/cash/merchant_approval
)
```

