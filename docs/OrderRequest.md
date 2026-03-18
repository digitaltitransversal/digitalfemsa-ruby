# DigitalFemsa::OrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charges** | [**Array&lt;ChargeRequest&gt;**](ChargeRequest.md) | List of [charges](https://developers.digitalfemsa.io/reference/orderscreatecharge) that are applied to the order | [optional] |
| **checkout** | [**CheckoutRequest**](CheckoutRequest.md) |  | [optional] |
| **return_url** | **String** | Optional return URL used by some payment/checkout flows. | [optional] |
| **currency** | **String** | Currency with which the payment will be made. It uses the 3-letter code of the [International Standard ISO 4217.](https://es.wikipedia.org/wiki/ISO_4217) |  |
| **customer_info** | [**CustomerInfo**](CustomerInfo.md) |  |  |
| **discount_lines** | [**Array&lt;OrderDiscountLinesRequest&gt;**](OrderDiscountLinesRequest.md) | List of [discounts](https://developers.digitalfemsa.io/reference/orderscreatediscountline) that are applied to the order. You must have at least one discount. | [optional] |
| **fiscal_entity** | **Object** | Fiscal entity of the order, Currently it is a purely informative field | [optional] |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | List of [products](https://developers.digitalfemsa.io/reference/orderscreateproduct) that are sold in the order. You must have at least one product. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata associated with the order | [optional] |
| **needs_shipping_contact** | **Boolean** | Allows you to fill out the shipping information at checkout | [optional] |
| **processing_mode** | **String** | Indicates the processing mode for the order, either ecommerce, recurrent or validation. | [optional] |
| **shipping_contact** | [**CustomerShippingContacts**](CustomerShippingContacts.md) |  | [optional] |
| **shipping_lines** | [**Array&lt;ShippingRequest&gt;**](ShippingRequest.md) | List of [shipping costs](https://developers.digitalfemsa.io/reference/orderscreateshipping). If the online store offers digital products. | [optional] |
| **tax_lines** | [**Array&lt;OrderTaxRequest&gt;**](OrderTaxRequest.md) | List of [taxes](https://developers.digitalfemsa.io/reference/orderscreatetaxes) that are applied to the order. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderRequest.new(
  charges: null,
  checkout: null,
  return_url: https://example.com/return,
  currency: MXN,
  customer_info: null,
  discount_lines: null,
  fiscal_entity: null,
  line_items: null,
  metadata: null,
  needs_shipping_contact: false,
  processing_mode: ecommerce,
  shipping_contact: null,
  shipping_lines: null,
  tax_lines: null
)
```

