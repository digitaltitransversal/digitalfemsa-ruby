# DigitalFemsa::ProductsApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**orders_create_product**](ProductsApi.md#orders_create_product) | **POST** /orders/{id}/line_items | Create Product |
| [**orders_delete_product**](ProductsApi.md#orders_delete_product) | **DELETE** /orders/{id}/line_items/{line_item_id} | Delete Product |
| [**orders_update_product**](ProductsApi.md#orders_update_product) | **PUT** /orders/{id}/line_items/{line_item_id} | Update Product |


## orders_create_product

> <ProductOrderResponse> orders_create_product(id, product, opts)

Create Product

Creates a new product (line item) for an existing order. Use this endpoint to add an additional item to the order after it has been created.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ProductsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
product = DigitalFemsa::Product.new({name: 'Box of Cohiba S1s', quantity: 1, unit_price: 20000}) # Product | Fields required to create a new product (line item) for an existing order. This request adds a new item to the order.
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Product
  result = api_instance.orders_create_product(id, product, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ProductsApi->orders_create_product: #{e}"
end
```

#### Using the orders_create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductOrderResponse>, Integer, Hash)> orders_create_product_with_http_info(id, product, opts)

```ruby
begin
  # Create Product
  data, status_code, headers = api_instance.orders_create_product_with_http_info(id, product, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductOrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ProductsApi->orders_create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **product** | [**Product**](Product.md) | Fields required to create a new product (line item) for an existing order. This request adds a new item to the order. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ProductOrderResponse**](ProductOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## orders_delete_product

> <ProductOrderResponse> orders_delete_product(id, line_item_id, opts)

Delete Product

Deletes a product (line item) from an existing order. The API will validate whether the order can be modified before removing the item.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ProductsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
line_item_id = 'line_item_2tQ8HkkfbauaKP9Ho' # String | identifier
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete Product
  result = api_instance.orders_delete_product(id, line_item_id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ProductsApi->orders_delete_product: #{e}"
end
```

#### Using the orders_delete_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductOrderResponse>, Integer, Hash)> orders_delete_product_with_http_info(id, line_item_id, opts)

```ruby
begin
  # Delete Product
  data, status_code, headers = api_instance.orders_delete_product_with_http_info(id, line_item_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductOrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ProductsApi->orders_delete_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **line_item_id** | **String** | identifier |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ProductOrderResponse**](ProductOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## orders_update_product

> <ProductOrderResponse> orders_update_product(id, line_item_id, update_product, opts)

Update Product

Updates an existing product (line item) for an existing order. Use this endpoint to modify the details of a specific line item in the order.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ProductsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
line_item_id = 'line_item_2tQ8HkkfbauaKP9Ho' # String | identifier
update_product = DigitalFemsa::UpdateProduct.new # UpdateProduct | Fields allowed to update an existing product (line item) in an order. All fields are optional; only the provided fields will be updated.
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Product
  result = api_instance.orders_update_product(id, line_item_id, update_product, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ProductsApi->orders_update_product: #{e}"
end
```

#### Using the orders_update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductOrderResponse>, Integer, Hash)> orders_update_product_with_http_info(id, line_item_id, update_product, opts)

```ruby
begin
  # Update Product
  data, status_code, headers = api_instance.orders_update_product_with_http_info(id, line_item_id, update_product, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductOrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ProductsApi->orders_update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **line_item_id** | **String** | identifier |  |
| **update_product** | [**UpdateProduct**](UpdateProduct.md) | Fields allowed to update an existing product (line item) in an order. All fields are optional; only the provided fields will be updated. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ProductOrderResponse**](ProductOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json

