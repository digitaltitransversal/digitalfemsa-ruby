# DigitalFemsa::PaymentMethodCash

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Cash payment type | [optional] |
| **object** | **String** |  |  |
| **auth_code** | **String** |  | [optional] |
| **cashier_id** | **String** |  | [optional] |
| **reference** | **String** |  | [optional] |
| **barcode_url** | **String** |  | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **service_name** | **String** |  | [optional] |
| **store** | **String** |  | [optional] |
| **store_name** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::PaymentMethodCash.new(
  type: oxxo,
  object: cash_payment,
  auth_code: 542563,
  cashier_id: OINM01010,
  reference: 93000262276908,
  barcode_url: https://pt-common-s3-stg.s3.amazonaws.com/644ebf80f2243197aad6cd8810375b905b613dbe.png?X-Amz-Algorithm&#x3D;AWS4-HMAC-SHA256&amp;X-Amz-Credential&#x3D;ASIA3UN6375MP4SLLCWV%2F20230203%2Fus-east-1%2Fs3%2Faws4_request&amp;X-Amz-Date&#x3D;20230203T215750Z&amp;X-Amz-Expires&#x3D;604800&amp;X-Amz-Security-Token&#x3D;...&amp;X-Amz-SignedHeaders&#x3D;host&amp;X-Amz-Signature&#x3D;...,
  expires_at: 1768802399,
  service_name: OxxoPay,
  store: null,
  store_name: OXXO
)
```

