# DigitalFemsa::CheckoutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Are the payment methods available for this link |  |
| **expires_at** | **Integer** | Unix timestamp of checkout expiration | [optional] |
| **failure_url** | **String** | Redirection url back to the site in case of failed payment, applies only to HostedPayment. | [optional] |
| **name** | **String** | Reason for payment | [optional] |
| **on_demand_enabled** | **Boolean** |  | [optional] |
| **success_url** | **String** | Redirection url back to the site in case of successful payment, applies only to HostedPayment | [optional] |
| **type** | **String** | This field represents the type of checkout | [optional] |
| **redirection_time** | **Integer** | Number of seconds to wait before redirecting to the success or failure url | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CheckoutRequest.new(
  allowed_payment_methods: [&quot;cash&quot;],
  expires_at: null,
  failure_url: null,
  name: null,
  on_demand_enabled: true,
  success_url: null,
  type: Integration,
  redirection_time: 60
)
```

