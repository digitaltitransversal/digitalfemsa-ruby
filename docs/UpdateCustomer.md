# DigitalFemsa::UpdateCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Customer&#39;s name. | [optional] |
| **email** | **String** | Customer email address. | [optional] |
| **phone** | **String** | Customer phone number. | [optional] |
| **corporate** | **Boolean** | Indicates whether the customer email is corporate. | [optional][default to false] |
| **custom_reference** | **String** | Merchant-defined reference used to identify the customer in your system. | [optional] |
| **referrer** | **String** | Referrer value (if applicable). | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary metadata associated with the customer. | [optional] |
| **payment_sources** | [**Array&lt;CustomerPaymentMethodsRequest&gt;**](CustomerPaymentMethodsRequest.md) | Contains details of the payment methods that the customer has active or has used in Femsa | [optional] |
| **default_payment_source_id** | **String** | Sets the default payment source for the customer (must be an existing payment source on the customer). | [optional] |
| **default_fiscal_entity_id** | **String** | Sets the default fiscal entity for the customer (must be an existing fiscal entity on the customer). | [optional] |
| **default_shipping_contact_id** | **String** | Sets the default shipping contact for the customer (must be an existing shipping contact on the customer). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::UpdateCustomer.new(
  name: miguel,
  email: miguel@gmail.com,
  phone: +5215555555555,
  corporate: false,
  custom_reference: customer_123,
  referrer: my_platform,
  metadata: null,
  payment_sources: null,
  default_payment_source_id: src_1a2b3c4d5e6f7g8h,
  default_fiscal_entity_id: fe_1a2b3c4d5e6f7g8h,
  default_shipping_contact_id: ship_cont_1a2b3c4d5e6f7g8h
)
```

