# DigitalFemsa::UpdateCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Customer&#39;s name. | [optional] |
| **email** | **String** | Customer email address. | [optional] |
| **phone** | **String** | Customer phone number. | [optional] |
| **corporate** | **Boolean** | True if the customer represents a company. | [optional] |
| **custom_reference** | **String** | Merchant-defined reference used to identify the customer in your system. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary metadata associated with the customer. | [optional] |
| **payment_sources** | [**Array&lt;CustomerPaymentMethodsRequest&gt;**](CustomerPaymentMethodsRequest.md) | Customer payment sources to create/attach (offline recurrent references). | [optional] |
| **default_payment_source_id** | **String** | Sets the default payment source for the customer (must be an existing payment source on the customer). | [optional] |
| **default_fiscal_entity_id** | **String** | Sets the default fiscal entity for the customer (must be an existing fiscal entity on the customer). | [optional] |
| **default_shipping_contact_id** | **String** | Sets the default shipping contact for the customer (must be an existing shipping contact on the customer). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::UpdateCustomer.new(
  name: Miguel,
  email: miguel@gmail.com,
  phone: 5215555555555,
  corporate: null,
  custom_reference: customer_123,
  metadata: null,
  payment_sources: null,
  default_payment_source_id: null,
  default_fiscal_entity_id: null,
  default_shipping_contact_id: null
)
```

