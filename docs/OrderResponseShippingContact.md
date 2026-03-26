# DigitalFemsa::OrderResponseShippingContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** |  | [optional] |
| **receiver** | **String** |  | [optional] |
| **between_streets** | **String** |  | [optional] |
| **address** | [**CustomerShippingContactsResponseAddress**](CustomerShippingContactsResponseAddress.md) |  | [optional] |
| **parent_id** | **String** | Customer ID that owns this shipping contact. | [optional] |
| **default** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata associated with the shipping contact | [optional] |
| **object** | **String** |  | [optional] |
| **deleted** | **Boolean** | Present only when the shipping contact was deleted. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderResponseShippingContact.new(
  phone: +525511223344,
  receiver: Marvin Fuller,
  between_streets: Ackerman Crescent,
  address: null,
  parent_id: cus_1234567890,
  default: false,
  id: null,
  created_at: null,
  metadata: null,
  object: null,
  deleted: true
)
```

