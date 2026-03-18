# DigitalFemsa::TransactionsApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_transaction**](TransactionsApi.md#get_transaction) | **GET** /transactions/{id} | Get transaction |
| [**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /transactions | List transactions |


## get_transaction

> <TransactionResponse> get_transaction(id, opts)

Get transaction

Retrieves the details of a transaction by its ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::TransactionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get transaction
  result = api_instance.get_transaction(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction: #{e}"
end
```

#### Using the get_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponse>, Integer, Hash)> get_transaction_with_http_info(id, opts)

```ruby
begin
  # Get transaction
  data, status_code, headers = api_instance.get_transaction_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_transactions

> <GetTransactionsResponse> get_transactions(opts)

List transactions

Returns a paginated list of transactions (ledger movements).  A transaction is a movement that represents the financial impact of payment operations, including amounts, fees, and net values. Transactions can be linked to a charge and may be linked to a transfer (payout) when they are included in a payout.  If you need payout-level information (destination, statement reference/description, payout status), use GET /transfers. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::TransactionsApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  _next: '_next_example', # String | next page
  previous: 'previous_example', # String | previous page
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  charge_id: '65412a893cd69a0001c25892', # String | id of the charge used for filtering
  type: 'capture', # String | type of the object to be retrieved
  currency: 'MXN' # String | currency of the object to be retrieved
}

begin
  # List transactions
  result = api_instance.get_transactions(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions: #{e}"
end
```

#### Using the get_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionsResponse>, Integer, Hash)> get_transactions_with_http_info(opts)

```ruby
begin
  # List transactions
  data, status_code, headers = api_instance.get_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionsResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **charge_id** | **String** | id of the charge used for filtering | [optional] |
| **type** | **String** | type of the object to be retrieved | [optional] |
| **currency** | **String** | currency of the object to be retrieved | [optional] |

### Return type

[**GetTransactionsResponse**](GetTransactionsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json

