# DigitalFemsa::TransfersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the transfer. |  |
| **object** | **String** | Object name, which is transfer. |  |
| **amount** | **Integer** | Amount in cents of the transfer. |  |
| **created_at** | **Integer** | Date and time of creation of the transfer in Unix format. |  |
| **currency** | **String** | The currency of the transfer. It uses the 3-letter code of ISO 4217. |  |
| **livemode** | **Boolean** | Indicates whether the transfer was created in live mode or test mode. |  |
| **status** | **String** | Code indicating transfer status. |  |
| **statement_reference** | **String** | Reference number of the transfer. |  |
| **statement_description** | **String** | Description of the transfer. |  |
| **destination** | [**TransfersResponseDestination**](TransfersResponseDestination.md) |  |  |
| **fee** | **Integer** | Total fee for the transfer (present only when requesting the &#39;details&#39; expansion). | [optional] |
| **capture_amount** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **capture_fee** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **capture_net** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **refund_amount** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **refund_fee** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **refund_net** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **payout_amount** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **payout_fee** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **payout_net** | **Integer** | Present only when requesting the &#39;details&#39; expansion. | [optional] |
| **transactions** | **Array&lt;Object&gt;** | Present only when requesting the &#39;details&#39; expansion. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::TransfersResponse.new(
  id: trf_2tPAmKCEJqh8RE6nY,
  object: transfer,
  amount: 10000,
  created_at: 1553273553,
  currency: MXN,
  livemode: true,
  status: pending,
  statement_reference: 4401234,
  statement_description: Femsa 4401234,
  destination: null,
  fee: null,
  capture_amount: null,
  capture_fee: null,
  capture_net: null,
  refund_amount: null,
  refund_fee: null,
  refund_net: null,
  payout_amount: null,
  payout_fee: null,
  payout_net: null,
  transactions: null
)
```

