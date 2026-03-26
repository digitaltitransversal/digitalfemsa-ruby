# DigitalFemsa::OrderUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | Currency code in ISO 4217 (3-letter uppercase). | [optional] |
| **customer_info** | [**OrderUpdateRequestCustomerInfo**](OrderUpdateRequestCustomerInfo.md) |  | [optional] |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | List of [products](https://developers.femsa.com/v2.1.0/reference/orderscreateproduct) that are sold in the order. You must have at least one product. | [optional] |
| **charges** | [**Array&lt;ChargeRequest&gt;**](ChargeRequest.md) |  | [optional] |
| **discount_lines** | [**Array&lt;OrderDiscountLinesRequest&gt;**](OrderDiscountLinesRequest.md) | List of [discounts](https://developers.femsa.com/v2.1.0/reference/orderscreatediscountline) that are applied to the order. You must have at least one discount. | [optional] |
| **tax_lines** | [**Array&lt;OrderTaxRequest&gt;**](OrderTaxRequest.md) |  | [optional] |
| **shipping_contact_id** | **String** | Existing shipping contact id from the customer to link to this order. | [optional] |
| **shipping_contact** | [**CustomerShippingContacts**](CustomerShippingContacts.md) |  | [optional] |
| **shipping_lines** | [**Array&lt;ShippingRequest&gt;**](ShippingRequest.md) | List of [shipping costs](https://developers.femsa.com/v2.1.0/reference/orderscreateshipping). If the online store offers digital products. | [optional] |
| **fiscal_entity_id** | **String** | Existing fiscal entity id from the customer to link to this order. | [optional] |
| **fiscal_entity** | [**OrderUpdateFiscalEntityRequest**](OrderUpdateFiscalEntityRequest.md) |  | [optional] |
| **return_url** | **String** | URL where the customer should be redirected after completing a payment flow (if applicable). | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary key-value data that you can attach to the order for your internal use. It is not used for payment processing. Keys should be strings; values can be any JSON value.  | [optional] |
| **status** | **String** | Order status update (only allowed transitions will be accepted). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderUpdateRequest.new(
  currency: MXN,
  customer_info: null,
  line_items: null,
  charges: null,
  discount_lines: null,
  tax_lines: null,
  shipping_contact_id: null,
  shipping_contact: null,
  shipping_lines: null,
  fiscal_entity_id: null,
  fiscal_entity: null,
  return_url: null,
  metadata: null,
  status: null
)
```

