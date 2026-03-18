# DigitalFemsa::TransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the transaction. |  |
| **object** | **String** | Object name, which is transaction. |  |
| **amount** | **Integer** | The amount of the transaction. |  |
| **fee** | **Integer** | The amount to be deducted for taxes and commissions. |  |
| **net** | **Integer** | The net amount after deducting commissions and taxes. |  |
| **currency** | **String** | The currency of the transaction. It uses the 3-letter code of ISO 4217. |  |
| **status** | **String** | Code indicating transaction status. |  |
| **type** | **String** | Transaction type. |  |
| **created_at** | **Integer** | Date and time of creation of the transaction in Unix format. |  |
| **livemode** | **Boolean** | Indicates whether the transaction was created in live mode or test mode. |  |
| **charge** | **String** | Charge ID associated with the transaction (present only if the transaction belongs to a charge). | [optional] |
| **transfer** | **String** | Transfer ID associated with the transaction (present only if the transaction belongs to a transfer). | [optional] |
| **transferred_at** | **Integer** | Date and time when the transaction was transferred, in Unix format. | [optional] |
| **formula** | **String** | Transaction fee formula identifier (if available). | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::TransactionResponse.new(
  id: 5ee7ec5b8dea41085erb7f9e,
  object: transaction,
  amount: 1000,
  fee: 560,
  net: 440,
  currency: MXN,
  status: pending,
  type: capture,
  created_at: 1553273553,
  livemode: true,
  charge: 5ee7ec58885a45585e6d9f8m,
  transfer: trf_2tPAmKCEJqh8RE6nY,
  transferred_at: 1553273999,
  formula: null
)
```

