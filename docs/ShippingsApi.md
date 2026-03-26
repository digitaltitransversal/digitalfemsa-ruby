# DigitalFemsa::ShippingsApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**orders_create_shipping**](ShippingsApi.md#orders_create_shipping) | **POST** /orders/{id}/shipping_lines | Create Shipping |
| [**orders_delete_shipping**](ShippingsApi.md#orders_delete_shipping) | **DELETE** /orders/{id}/shipping_lines/{shipping_id} | Delete Shipping |
| [**orders_update_shipping**](ShippingsApi.md#orders_update_shipping) | **PUT** /orders/{id}/shipping_lines/{shipping_id} | Update Shipping |


## orders_create_shipping

> <ShippingOrderResponse> orders_create_shipping(id, shipping_request, opts)

Create Shipping

Creates a new shipping line for an existing order. The shipping line is added to the order identified by `id`. The response returns the created shipping line.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ShippingsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
shipping_request = DigitalFemsa::ShippingRequest.new({amount: 100}) # ShippingRequest | Request body for creating or updating a shipping line.
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Shipping
  result = api_instance.orders_create_shipping(id, shipping_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ShippingsApi->orders_create_shipping: #{e}"
end
```

#### Using the orders_create_shipping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShippingOrderResponse>, Integer, Hash)> orders_create_shipping_with_http_info(id, shipping_request, opts)

```ruby
begin
  # Create Shipping
  data, status_code, headers = api_instance.orders_create_shipping_with_http_info(id, shipping_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShippingOrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ShippingsApi->orders_create_shipping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **shipping_request** | [**ShippingRequest**](ShippingRequest.md) | Request body for creating or updating a shipping line. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## orders_delete_shipping

> <ShippingOrderResponse> orders_delete_shipping(id, shipping_id, opts)

Delete Shipping

Deletes an existing shipping line from an order. The shipping line identified by `shipping_id` belongs to the order identified by `id`.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ShippingsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
shipping_id = 'ship_lin_2tQ974hSHcsdeSZHG' # String | identifier
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete Shipping
  result = api_instance.orders_delete_shipping(id, shipping_id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ShippingsApi->orders_delete_shipping: #{e}"
end
```

#### Using the orders_delete_shipping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShippingOrderResponse>, Integer, Hash)> orders_delete_shipping_with_http_info(id, shipping_id, opts)

```ruby
begin
  # Delete Shipping
  data, status_code, headers = api_instance.orders_delete_shipping_with_http_info(id, shipping_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShippingOrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ShippingsApi->orders_delete_shipping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **shipping_id** | **String** | identifier |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## orders_update_shipping

> <ShippingOrderResponse> orders_update_shipping(id, shipping_id, shipping_request, opts)

Update Shipping

Updates an existing shipping line for an order. The shipping line identified by `shipping_id` belongs to the order identified by `id`. Only the fields provided in the request body are updated.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ShippingsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
shipping_id = 'ship_lin_2tQ974hSHcsdeSZHG' # String | identifier
shipping_request = DigitalFemsa::ShippingRequest.new({amount: 100}) # ShippingRequest | Request body for creating or updating a shipping line.
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Shipping
  result = api_instance.orders_update_shipping(id, shipping_id, shipping_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ShippingsApi->orders_update_shipping: #{e}"
end
```

#### Using the orders_update_shipping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShippingOrderResponse>, Integer, Hash)> orders_update_shipping_with_http_info(id, shipping_id, shipping_request, opts)

```ruby
begin
  # Update Shipping
  data, status_code, headers = api_instance.orders_update_shipping_with_http_info(id, shipping_id, shipping_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShippingOrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ShippingsApi->orders_update_shipping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **shipping_id** | **String** | identifier |  |
| **shipping_request** | [**ShippingRequest**](ShippingRequest.md) | Request body for creating or updating a shipping line. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json

