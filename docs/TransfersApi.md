# DigitalFemsa::TransfersApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_transfer**](TransfersApi.md#get_transfer) | **GET** /transfers/{id} | Get transfer |
| [**get_transfers**](TransfersApi.md#get_transfers) | **GET** /transfers | List transfers |


## get_transfer

> <TransferResponse> get_transfer(id, opts)

Get transfer

Retrieves the details of a transfer by its ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::TransfersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get transfer
  result = api_instance.get_transfer(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling TransfersApi->get_transfer: #{e}"
end
```

#### Using the get_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferResponse>, Integer, Hash)> get_transfer_with_http_info(id, opts)

```ruby
begin
  # Get transfer
  data, status_code, headers = api_instance.get_transfer_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling TransfersApi->get_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**TransferResponse**](TransferResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_transfers

> <GetTransfersResponse> get_transfers(opts)

List transfers

Returns a paginated list of transfers (payouts/dispersions).  A transfer represents a payout of funds to the merchant (where the money is sent and the payout status). Transfers typically aggregate multiple transactions.  If you need movement-level details (amount/fee/net per operation) or to reconcile charges, use GET /transactions. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::TransfersApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # List transfers
  result = api_instance.get_transfers(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling TransfersApi->get_transfers: #{e}"
end
```

#### Using the get_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransfersResponse>, Integer, Hash)> get_transfers_with_http_info(opts)

```ruby
begin
  # List transfers
  data, status_code, headers = api_instance.get_transfers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransfersResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling TransfersApi->get_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**GetTransfersResponse**](GetTransfersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json

