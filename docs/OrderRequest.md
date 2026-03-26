# DigitalFemsa::OrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | Currency with which the payment will be made. |  |
| **customer_info** | [**OrderRequestCustomerInfo**](OrderRequestCustomerInfo.md) |  |  |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | List of [products](https://developers.digitalfemsa.io/reference/orderscreateproduct) that are sold in the order. You must have at least one product. |  |
| **charges** | [**Array&lt;ChargeRequest&gt;**](ChargeRequest.md) | List of [charges](https://developers.digitalfemsa.io/reference/orderscreatecharge) that are applied to the order | [optional] |
| **checkout** | [**CheckoutRequest**](CheckoutRequest.md) |  | [optional] |
| **discount_lines** | [**Array&lt;OrderDiscountLinesRequest&gt;**](OrderDiscountLinesRequest.md) | List of [discounts](https://developers.digitalfemsa.io/reference/orderscreatediscountline) that are applied to the order. You must have at least one discount. | [optional] |
| **tax_lines** | [**Array&lt;OrderTaxRequest&gt;**](OrderTaxRequest.md) | List of [taxes](https://developers.digitalfemsa.io/reference/orderscreatetaxes) that are applied to the order. | [optional] |
| **needs_shipping_contact** | **Boolean** | Allows you to fill out the shipping information at checkout | [optional] |
| **shipping_contact** | [**CustomerShippingContacts**](CustomerShippingContacts.md) |  | [optional] |
| **shipping_lines** | [**Array&lt;ShippingRequest&gt;**](ShippingRequest.md) | List of [shipping costs](https://developers.digitalfemsa.io/reference/orderscreateshipping). If the online store offers digital products. | [optional] |
| **fiscal_entity** | [**OrderFiscalEntityRequest**](OrderFiscalEntityRequest.md) |  | [optional] |
| **processing_mode** | **String** | Indicates the processing mode for the order, either ecommerce, recurrent or validation. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary key-value data that you can attach to the order for your internal use (e.g. &#x60;customer_segment&#x60;, &#x60;sales_channel&#x60;, &#x60;internal_order_id&#x60;). It is not used for payment processing or fraud decisions. Keys should be strings; values can be any JSON value. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderRequest.new(
  currency: MXN,
  customer_info: null,
  line_items: null,
  charges: null,
  checkout: null,
  discount_lines: null,
  tax_lines: null,
  needs_shipping_contact: false,
  shipping_contact: null,
  shipping_lines: null,
  fiscal_entity: null,
  processing_mode: ecommerce,
  metadata: null
)
```

