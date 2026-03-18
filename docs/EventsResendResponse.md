# DigitalFemsa::EventsResendResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_attempts** | **Integer** |  |  |
| **id** | **String** |  |  |
| **last_attempted_at** | **Integer** |  |  |
| **last_http_response_status** | **Integer** |  |  |
| **response_data** | **Hash&lt;String, Object&gt;** |  |  |
| **url** | **String** |  |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::EventsResendResponse.new(
  failed_attempts: 2,
  id: webhl_2zPzadKdcLpBVnWC2,
  last_attempted_at: 1768856284,
  last_http_response_status: 405,
  response_data: {},
  url: https://example.com/new-webhooks
)
```

