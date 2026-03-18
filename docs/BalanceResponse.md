# DigitalFemsa::BalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Amounts currently available, grouped by currency. |  |
| **pending** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Amounts pending settlement, grouped by currency. |  |
| **retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Retention amount applied, grouped by currency. |  |
| **retained** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Amounts currently retained, grouped by currency. |  |
| **temporarily_retained** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Amounts temporarily retained, grouped by currency. |  |
| **target_retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Target retention amount, grouped by currency. |  |
| **target_temporary_retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Target temporary retention amount, grouped by currency. |  |
| **target_collateral_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Target collateral amount, grouped by currency. |  |
| **gateway** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Gateway balance amounts, grouped by currency. |  |
| **cashout_retention_debited** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | Cashout retention debited amounts, grouped by currency. |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::BalanceResponse.new(
  available: null,
  pending: null,
  retention_amount: null,
  retained: null,
  temporarily_retained: null,
  target_retention_amount: null,
  target_temporary_retention_amount: null,
  target_collateral_amount: null,
  gateway: null,
  cashout_retention_debited: null
)
```

