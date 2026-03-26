# DigitalFemsa::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Customer&#39;s name. |  |
| **email** | **String** | Customer email address. |  |
| **phone** | **String** | Customer phone number. | [optional] |
| **corporate** | **Boolean** | Indicates whether the customer email is corporate. | [optional][default to false] |
| **custom_reference** | **String** | Merchant-defined reference used to identify the customer in your system. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary metadata associated with the customer. | [optional] |
| **payment_sources** | [**Array&lt;CustomerPaymentMethodsRequest&gt;**](CustomerPaymentMethodsRequest.md) | Customer payment sources to be created with the customer (optional). | [optional] |
| **fiscal_entities** | [**Array&lt;CustomerFiscalEntitiesRequest&gt;**](CustomerFiscalEntitiesRequest.md) | Customer fiscal entities to be created with the customer (optional). | [optional] |
| **shipping_contacts** | [**Array&lt;CustomerShippingContacts&gt;**](CustomerShippingContacts.md) | Customer shipping contacts to be created with the customer (optional). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::Customer.new(
  name: miguel,
  email: miguel@gmail.com,
  phone: +5215555555555,
  corporate: false,
  custom_reference: null,
  metadata: null,
  payment_sources: null,
  fiscal_entities: null,
  shipping_contacts: null
)
```

