# DigitalFemsa::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Customer&#39;s name. |  |
| **email** | **String** | Customer email address. |  |
| **phone** | **String** | Customer phone number. | [optional] |
| **corporate** | **Boolean** | Indicates whether the customer email is corporate. | [optional][default to false] |
| **custom_reference** | **String** | Merchant-defined reference used to identify the customer in your system. | [optional] |
| **referrer** | **String** | Referrer value (if applicable). | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary metadata associated with the customer. | [optional] |
| **fiscal_entities** | [**Array&lt;CustomerFiscalEntitiesRequest&gt;**](CustomerFiscalEntitiesRequest.md) | Customer fiscal entities to be created with the customer (optional). | [optional] |
| **shipping_contacts** | [**Array&lt;CustomerShippingContacts&gt;**](CustomerShippingContacts.md) | Customer shipping contacts to be created with the customer (optional). | [optional] |
| **payment_sources** | [**Array&lt;CustomerPaymentSourcesInner&gt;**](CustomerPaymentSourcesInner.md) | Customer payment sources to be created with the customer (optional). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::Customer.new(
  name: miguel,
  email: miguel@gmail.com,
  phone: +5215555555555,
  corporate: false,
  custom_reference: customer_123,
  referrer: my_platform,
  metadata: null,
  fiscal_entities: null,
  shipping_contacts: null,
  payment_sources: null
)
```

