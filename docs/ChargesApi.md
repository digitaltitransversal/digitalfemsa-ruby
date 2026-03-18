# DigitalFemsa::ChargesApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_charges**](ChargesApi.md#get_charges) | **GET** /charges | List charges |
| [**orders_create_charge**](ChargesApi.md#orders_create_charge) | **POST** /orders/{id}/charges | Create a charge for an order |
| [**update_charge**](ChargesApi.md#update_charge) | **PUT** /charges/{id} | Update a charge |


## get_charges

> <GetChargesResponse> get_charges(opts)

List charges

Retrieves a paginated list of charges for the authenticated account.  Use the pagination parameters (`limit`, `next_page`, `previous_page`) to navigate through results. Use `search` to filter charges (for example by id or reference). 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ChargesApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  _next: '_next_example', # String | next page
  previous: 'previous_example', # String | previous page
  search: 'search_example' # String | General order search, e.g. by mail, reference etc.
}

begin
  # List charges
  result = api_instance.get_charges(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ChargesApi->get_charges: #{e}"
end
```

#### Using the get_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChargesResponse>, Integer, Hash)> get_charges_with_http_info(opts)

```ruby
begin
  # List charges
  data, status_code, headers = api_instance.get_charges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChargesResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ChargesApi->get_charges_with_http_info: #{e}"
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

### Return type

[**GetChargesResponse**](GetChargesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## orders_create_charge

> <ChargeOrderResponse> orders_create_charge(id, charge_request, opts)

Create a charge for an order

Creates a new charge associated with an existing order.  Notes: - The charge is created for the order identified by the path parameter `id`. - Depending on the payment method, the charge may be created in a non-final status (for example, pending). - If the order does not meet the required conditions, the API may respond with **428 Precondition Required**. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ChargesApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
charge_request = DigitalFemsa::ChargeRequest.new({payment_method: DigitalFemsa::ChargeRequestPaymentMethod.new({type: 'cash'})}) # ChargeRequest | requested field for a charge
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create a charge for an order
  result = api_instance.orders_create_charge(id, charge_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ChargesApi->orders_create_charge: #{e}"
end
```

#### Using the orders_create_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeOrderResponse>, Integer, Hash)> orders_create_charge_with_http_info(id, charge_request, opts)

```ruby
begin
  # Create a charge for an order
  data, status_code, headers = api_instance.orders_create_charge_with_http_info(id, charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeOrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ChargesApi->orders_create_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **charge_request** | [**ChargeRequest**](ChargeRequest.md) | requested field for a charge |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ChargeOrderResponse**](ChargeOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## update_charge

> <ChargeResponse> update_charge(id, charge_update_request, opts)

Update a charge

Updates an existing charge. Only `reference_id` can be updated.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ChargesApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
charge_update_request = DigitalFemsa::ChargeUpdateRequest.new # ChargeUpdateRequest | requested field for update a charge
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update a charge
  result = api_instance.update_charge(id, charge_update_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ChargesApi->update_charge: #{e}"
end
```

#### Using the update_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> update_charge_with_http_info(id, charge_update_request, opts)

```ruby
begin
  # Update a charge
  data, status_code, headers = api_instance.update_charge_with_http_info(id, charge_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ChargesApi->update_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **charge_update_request** | [**ChargeUpdateRequest**](ChargeUpdateRequest.md) | requested field for update a charge |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json

