# DigitalFemsa::ChargeResponsePaymentMethod

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'digital_femsa'

DigitalFemsa::ChargeResponsePaymentMethod.openapi_one_of
# =>
# [
#   :'PaymentMethodCash'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'digital_femsa'

DigitalFemsa::ChargeResponsePaymentMethod.openapi_discriminator_name
# => :'object'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'digital_femsa'

DigitalFemsa::ChargeResponsePaymentMethod.openapi_discriminator_mapping
# =>
# {
#   :'cash_payment' => :'PaymentMethodCash'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'digital_femsa'

DigitalFemsa::ChargeResponsePaymentMethod.build(data)
# => #<PaymentMethodCash:0x00007fdd4aab02a0>

DigitalFemsa::ChargeResponsePaymentMethod.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentMethodCash`
- `nil` (if no type matches)

