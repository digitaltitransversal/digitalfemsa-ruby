# DigitalFemsa::CustomerUpdateShippingContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Phone contact | [optional] |
| **receiver** | **String** | Name of the person who will receive the order | [optional] |
| **between_streets** | **String** | The street names between which the order will be delivered. | [optional] |
| **address** | [**CustomerShippingContactsAddress**](CustomerShippingContactsAddress.md) |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata associated with the shipping contact | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CustomerUpdateShippingContacts.new(
  phone: +525511223344,
  receiver: Marvin Fuller,
  between_streets: Ackerman Crescent,
  address: null,
  metadata: {&quot;key&quot;:&quot;value&quot;}
)
```

