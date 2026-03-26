# DigitalFemsa::OrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **payment_status** | **String** | Current payment status of the order. It can be &#x60;null&#x60; for orders without payment information yet. | [optional] |
| **amount_refunded** | **Integer** |  | [optional] |
| **split_payment** | **Boolean** | Indicates whether the order uses split payments (when available/configured). | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata attached to the order. | [optional] |
| **is_refundable** | **Boolean** | Indicates whether the order is currently refundable. | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **updated_at** | **Integer** |  | [optional] |
| **customer_info** | [**OrderResponseCustomerInfo**](OrderResponseCustomerInfo.md) |  | [optional] |
| **shipping_contact** | [**OrderResponseShippingContact**](OrderResponseShippingContact.md) |  | [optional] |
| **channel** | [**OrderResponseChannel**](OrderResponseChannel.md) |  | [optional] |
| **fiscal_entity** | [**OrderFiscalEntityResponse**](OrderFiscalEntityResponse.md) |  | [optional] |
| **checkout** | [**OrderResponseCheckout**](OrderResponseCheckout.md) |  | [optional] |
| **line_items** | [**OrderResponseProducts**](OrderResponseProducts.md) |  | [optional] |
| **discount_lines** | [**OrderResponseDiscountLines**](OrderResponseDiscountLines.md) |  | [optional] |
| **charges** | [**OrderResponseCharges**](OrderResponseCharges.md) |  | [optional] |
| **partial_reference** | **Hash&lt;String, Object&gt;** | Partial reference information (when applicable). Structure may vary depending on the payment flow. | [optional] |
| **payments_info** | **Hash&lt;String, Object&gt;** | Additional payment information (when available). Structure may vary. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderResponse.new(
  id: ord_2zKSF2aUY2kBRcyXJ,
  object: order,
  livemode: true,
  amount: 10000,
  currency: MXN,
  payment_status: pending_payment,
  amount_refunded: 0,
  split_payment: null,
  metadata: {},
  is_refundable: false,
  created_at: 1767651766,
  updated_at: 1767651766,
  customer_info: null,
  shipping_contact: null,
  channel: null,
  fiscal_entity: null,
  checkout: null,
  line_items: null,
  discount_lines: null,
  charges: null,
  partial_reference: null,
  payments_info: null
)
```

