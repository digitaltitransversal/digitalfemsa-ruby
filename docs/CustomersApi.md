# DigitalFemsa::CustomersApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a customer |
| [**create_customer_fiscal_entities**](CustomersApi.md#create_customer_fiscal_entities) | **POST** /customers/{id}/fiscal_entities | Create Fiscal Entity |
| [**delete_customer_by_id**](CustomersApi.md#delete_customer_by_id) | **DELETE** /customers/{id} | Delete Customer |
| [**get_customer_by_id**](CustomersApi.md#get_customer_by_id) | **GET** /customers/{id} | Get Customer |
| [**get_customers**](CustomersApi.md#get_customers) | **GET** /customers | Get a list of customers |
| [**update_customer**](CustomersApi.md#update_customer) | **PUT** /customers/{id} | Update customer |
| [**update_customer_fiscal_entities**](CustomersApi.md#update_customer_fiscal_entities) | **PUT** /customers/{id}/fiscal_entities/{fiscal_entities_id} | Update Fiscal Entity |


## create_customer

> <CustomerResponse> create_customer(customer, opts)

Create a customer

Creates a new customer for the authenticated company.  Use customers to store and reuse buyer information (for example name, email, phone, and addresses). The created customer can be referenced later when creating orders and other resources. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::CustomersApi.new
customer = DigitalFemsa::Customer.new({name: 'miguel', email: 'miguel@gmail.com'}) # Customer | requested field for customer
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create a customer
  result = api_instance.create_customer(customer, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> create_customer_with_http_info(customer, opts)

```ruby
begin
  # Create a customer
  data, status_code, headers = api_instance.create_customer_with_http_info(customer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | [**Customer**](Customer.md) | requested field for customer |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## create_customer_fiscal_entities

> <CreateCustomerFiscalEntitiesResponse> create_customer_fiscal_entities(id, customer_fiscal_entities_request, opts)

Create Fiscal Entity

Create a fiscal entity resource for a given customer ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::CustomersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
customer_fiscal_entities_request = DigitalFemsa::CustomerFiscalEntitiesRequest.new({address: DigitalFemsa::CustomerAddress.new({street1: 'Nuevo Leon 254', postal_code: '06100', city: 'Ciudad de Mexico', country: 'MX'})}) # CustomerFiscalEntitiesRequest | requested field for customer fiscal entities
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Fiscal Entity
  result = api_instance.create_customer_fiscal_entities(id, customer_fiscal_entities_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->create_customer_fiscal_entities: #{e}"
end
```

#### Using the create_customer_fiscal_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerFiscalEntitiesResponse>, Integer, Hash)> create_customer_fiscal_entities_with_http_info(id, customer_fiscal_entities_request, opts)

```ruby
begin
  # Create Fiscal Entity
  data, status_code, headers = api_instance.create_customer_fiscal_entities_with_http_info(id, customer_fiscal_entities_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerFiscalEntitiesResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->create_customer_fiscal_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **customer_fiscal_entities_request** | [**CustomerFiscalEntitiesRequest**](CustomerFiscalEntitiesRequest.md) | requested field for customer fiscal entities |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CreateCustomerFiscalEntitiesResponse**](CreateCustomerFiscalEntitiesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## delete_customer_by_id

> <CustomerResponse> delete_customer_by_id(id, opts)

Delete Customer

Deleted a customer resource that corresponds to a customer ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::CustomersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete Customer
  result = api_instance.delete_customer_by_id(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->delete_customer_by_id: #{e}"
end
```

#### Using the delete_customer_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> delete_customer_by_id_with_http_info(id, opts)

```ruby
begin
  # Delete Customer
  data, status_code, headers = api_instance.delete_customer_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->delete_customer_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_customer_by_id

> <CustomerResponse> get_customer_by_id(id, opts)

Get Customer

Gets a customer resource that corresponds to a customer ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::CustomersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Customer
  result = api_instance.get_customer_by_id(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->get_customer_by_id: #{e}"
end
```

#### Using the get_customer_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> get_customer_by_id_with_http_info(id, opts)

```ruby
begin
  # Get Customer
  data, status_code, headers = api_instance.get_customer_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->get_customer_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_customers

> <CustomersResponse> get_customers(opts)

Get a list of customers

Returns a paginated list of customers for the authenticated company.  Use the [search] parameter to filter results. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::CustomersApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get a list of customers
  result = api_instance.get_customers(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->get_customers: #{e}"
end
```

#### Using the get_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersResponse>, Integer, Hash)> get_customers_with_http_info(opts)

```ruby
begin
  # Get a list of customers
  data, status_code, headers = api_instance.get_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->get_customers_with_http_info: #{e}"
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

[**CustomersResponse**](CustomersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## update_customer

> <CustomerResponse> update_customer(id, update_customer, opts)

Update customer

You can update customer-related data

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::CustomersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
update_customer = DigitalFemsa::UpdateCustomer.new # UpdateCustomer | requested field for customer
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update customer
  result = api_instance.update_customer(id, update_customer, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerResponse>, Integer, Hash)> update_customer_with_http_info(id, update_customer, opts)

```ruby
begin
  # Update customer
  data, status_code, headers = api_instance.update_customer_with_http_info(id, update_customer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **update_customer** | [**UpdateCustomer**](UpdateCustomer.md) | requested field for customer |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## update_customer_fiscal_entities

> <UpdateCustomerFiscalEntitiesResponse> update_customer_fiscal_entities(id, fiscal_entities_id, customer_update_fiscal_entities_request, opts)

Update Fiscal Entity

Update Fiscal Entity resource that corresponds to a customer ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::CustomersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
fiscal_entities_id = 'fis_ent_2tQ8HkkfbauaKP9Ho' # String | identifier
customer_update_fiscal_entities_request = DigitalFemsa::CustomerUpdateFiscalEntitiesRequest.new # CustomerUpdateFiscalEntitiesRequest | Request body for updating a customer fiscal entity.
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Fiscal Entity
  result = api_instance.update_customer_fiscal_entities(id, fiscal_entities_id, customer_update_fiscal_entities_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->update_customer_fiscal_entities: #{e}"
end
```

#### Using the update_customer_fiscal_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCustomerFiscalEntitiesResponse>, Integer, Hash)> update_customer_fiscal_entities_with_http_info(id, fiscal_entities_id, customer_update_fiscal_entities_request, opts)

```ruby
begin
  # Update Fiscal Entity
  data, status_code, headers = api_instance.update_customer_fiscal_entities_with_http_info(id, fiscal_entities_id, customer_update_fiscal_entities_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCustomerFiscalEntitiesResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling CustomersApi->update_customer_fiscal_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **fiscal_entities_id** | **String** | identifier |  |
| **customer_update_fiscal_entities_request** | [**CustomerUpdateFiscalEntitiesRequest**](CustomerUpdateFiscalEntitiesRequest.md) | Request body for updating a customer fiscal entity. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**UpdateCustomerFiscalEntitiesResponse**](UpdateCustomerFiscalEntitiesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json

