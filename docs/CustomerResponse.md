# DigitalFemsa::CustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Customer&#39;s ID |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** | Creation date of the object (Unix timestamp) |  |
| **livemode** | **Boolean** | true if the object exists in live mode or false if the object exists in test mode |  |
| **name** | **String** | Customer&#39;s name | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** | Customer&#39;s phone number | [optional] |
| **corporate** | **Boolean** | true if the customer is a company | [optional] |
| **custom_reference** | **String** | Custom reference | [optional] |
| **referrer** | **String** | Referrer information (if available) | [optional] |
| **vertical_info** | **Hash&lt;String, Object&gt;** | Vertical-specific information (shape depends on integration) | [optional] |
| **default_fiscal_entity_id** | **String** |  | [optional] |
| **default_shipping_contact_id** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Customer metadata (maps to contextual_data in backend) | [optional] |
| **payment_sources** | [**CustomerPaymentMethodsResponse**](CustomerPaymentMethodsResponse.md) |  | [optional] |
| **fiscal_entities** | [**CustomerFiscalEntitiesResponse**](CustomerFiscalEntitiesResponse.md) |  | [optional] |
| **shipping_contacts** | [**CustomerResponseShippingContacts**](CustomerResponseShippingContacts.md) |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CustomerResponse.new(
  id: cus_2tHJfJ79KyUwpxTik,
  object: customer,
  created_at: 1485151007,
  livemode: true,
  name: Felipe,
  email: felipe@gmail.com,
  phone: +5215555555555,
  corporate: false,
  custom_reference: custom_reference,
  referrer: null,
  vertical_info: null,
  default_fiscal_entity_id: fis_ent_2tKqqAfqPi21oCmEJ,
  default_shipping_contact_id: ship_cont_2tKZsTYcsryyu7Ah8,
  metadata: null,
  payment_sources: null,
  fiscal_entities: null,
  shipping_contacts: null
)
```

