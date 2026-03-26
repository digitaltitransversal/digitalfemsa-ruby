# DigitalFemsa::BalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Amounts currently available, grouped by currency. | [optional] |
| **cashout_retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s cashout retention amount | [optional] |
| **conekta_retention** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s Femsa retention | [optional] |
| **gateway** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Gateway balance amounts, grouped by currency. | [optional] |
| **pending** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Amounts pending settlement, grouped by currency. | [optional] |
| **retained** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Amounts currently retained, grouped by currency. | [optional] |
| **retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Retention amount applied, grouped by currency. | [optional] |
| **target_collateral_amount** | **Object** | Target collateral amount, grouped by currency. | [optional] |
| **target_retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Target retention amount, grouped by currency. | [optional] |
| **temporarily_retained** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Amounts temporarily retained | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::BalanceResponse.new(
  available: null,
  cashout_retention_amount: null,
  conekta_retention: null,
  gateway: null,
  pending: null,
  retained: null,
  retention_amount: null,
  target_collateral_amount: null,
  target_retention_amount: null,
  temporarily_retained: null
)
```

