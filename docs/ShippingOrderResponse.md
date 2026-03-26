# DigitalFemsa::ShippingOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Shipping amount in cents |  |
| **carrier** | **String** | Carrier name for the shipment | [optional] |
| **tracking_number** | **String** | Tracking number can be used to track the shipment | [optional] |
| **method** | **String** | Method of shipment | [optional] |
| **description** | **String** | Shipping line description | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Hash where the user can send additional information for each &#39;shipping&#39;. | [optional] |
| **id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **parent_id** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ShippingOrderResponse.new(
  amount: 100,
  carrier: FEDEX,
  tracking_number: TRACK123,
  method: Same day,
  description: Shipping line,
  metadata: {key&#x3D;value},
  id: ship_lin_2sLxi45ZFs1GHJmzx,
  object: shipping_line,
  parent_id: ord_2sLxi3MqYFJ1QfTmP
)
```

