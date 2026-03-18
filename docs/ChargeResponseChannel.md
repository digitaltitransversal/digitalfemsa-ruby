# DigitalFemsa::ChargeResponseChannel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment** | **String** |  | [optional] |
| **checkout_request_id** | **String** |  | [optional] |
| **checkout_request_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ChargeResponseChannel.new(
  segment: Checkout,
  checkout_request_id: f3a5bfc1-ba1c-474f-9687-46d8b75ffc90,
  checkout_request_type: Integration,
  id: channel_2zNxD65G8MBNkYksy
)
```

