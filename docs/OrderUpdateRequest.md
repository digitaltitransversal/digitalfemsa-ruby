# DigitalFemsa::OrderUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Order status update. Allowed values depend on server-side validations. | [optional] |
| **currency** | **String** | Currency used for the order. Uses ISO 4217 (3-letter code). Allowed values depend on server-side validations. | [optional] |
| **customer_info** | [**CustomerInfo**](CustomerInfo.md) |  | [optional] |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | List of products sold in the order. | [optional] |
| **shipping_lines** | [**Array&lt;ShippingRequest&gt;**](ShippingRequest.md) | List of shipping costs applied to the order. | [optional] |
| **tax_lines** | [**Array&lt;OrderTaxRequest&gt;**](OrderTaxRequest.md) |  | [optional] |
| **discount_lines** | [**Array&lt;OrderDiscountLinesRequest&gt;**](OrderDiscountLinesRequest.md) | List of discounts applied to the order. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Additional information attached to the order. | [optional] |
| **return_url** | **String** | URL to redirect the customer after completing the flow (when applicable). | [optional] |
| **charges** | [**Array&lt;ChargeRequest&gt;**](ChargeRequest.md) | Add new charges to the order. Subject to server-side validations (for example, maximum charges rules).  | [optional] |
| **shipping_contact_id** | **String** | References an existing customer shipping contact. | [optional] |
| **shipping_contact** | [**CustomerShippingContacts**](CustomerShippingContacts.md) |  | [optional] |
| **fiscal_entity_id** | **String** | References an existing customer fiscal entity. | [optional] |
| **fiscal_entity** | [**OrderUpdateFiscalEntityRequest**](OrderUpdateFiscalEntityRequest.md) |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderUpdateRequest.new(
  status: null,
  currency: MXN,
  customer_info: null,
  line_items: null,
  shipping_lines: null,
  tax_lines: null,
  discount_lines: null,
  metadata: null,
  return_url: https://example.com/return,
  charges: null,
  shipping_contact_id: null,
  shipping_contact: null,
  fiscal_entity_id: null,
  fiscal_entity: null
)
```

