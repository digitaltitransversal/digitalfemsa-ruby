# DigitalFemsa::ApiKeysApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](ApiKeysApi.md#create_api_key) | **POST** /api_keys | Create API key |
| [**delete_api_key**](ApiKeysApi.md#delete_api_key) | **DELETE** /api_keys/{id} | Delete API key |
| [**get_api_key**](ApiKeysApi.md#get_api_key) | **GET** /api_keys/{id} | Get API key |
| [**get_api_keys**](ApiKeysApi.md#get_api_keys) | **GET** /api_keys | List API keys |
| [**update_api_key**](ApiKeysApi.md#update_api_key) | **PUT** /api_keys/{id} | Update API key |


## create_api_key

> <ApiKeyCreateResponse> create_api_key(api_key_request, opts)

Create API key

Creates a new API key.  The response includes an `authentication_token` that is shown only once (at creation time). Copy and store it securely. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ApiKeysApi.new
api_key_request = DigitalFemsa::ApiKeyRequest.new({role: 'private'}) # ApiKeyRequest | requested field for a api keys
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create API key
  result = api_instance.create_api_key(api_key_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->create_api_key: #{e}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyCreateResponse>, Integer, Hash)> create_api_key_with_http_info(api_key_request, opts)

```ruby
begin
  # Create API key
  data, status_code, headers = api_instance.create_api_key_with_http_info(api_key_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyCreateResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->create_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_request** | [**ApiKeyRequest**](ApiKeyRequest.md) | requested field for a api keys |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ApiKeyCreateResponse**](ApiKeyCreateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## delete_api_key

> <DeleteApiKeysResponse> delete_api_key(id, opts)

Delete API key

Deletes an API key by its ID. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ApiKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Delete API key
  result = api_instance.delete_api_key(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->delete_api_key: #{e}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteApiKeysResponse>, Integer, Hash)> delete_api_key_with_http_info(id, opts)

```ruby
begin
  # Delete API key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteApiKeysResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->delete_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**DeleteApiKeysResponse**](DeleteApiKeysResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_api_key

> <ApiKeyResponse> get_api_key(id, opts)

Get API key

Retrieves the details of an API key by its ID. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ApiKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get API key
  result = api_instance.get_api_key(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->get_api_key: #{e}"
end
```

#### Using the get_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponse>, Integer, Hash)> get_api_key_with_http_info(id, opts)

```ruby
begin
  # Get API key
  data, status_code, headers = api_instance.get_api_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->get_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_api_keys

> <GetApiKeysResponse> get_api_keys(opts)

List API keys

Retrieves a paginated list of API keys for the authenticated account.  Use the pagination parameters (`limit`, `next_page`, `previous_page`) to navigate through results. Use the `search` query parameter to perform a general search (for example by key `id` or description). 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ApiKeysApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  _next: '_next_example', # String | next page
  previous: 'previous_example', # String | previous page
  search: 'search_example' # String | General search, e.g. by id or description
}

begin
  # List API keys
  result = api_instance.get_api_keys(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->get_api_keys: #{e}"
end
```

#### Using the get_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetApiKeysResponse>, Integer, Hash)> get_api_keys_with_http_info(opts)

```ruby
begin
  # List API keys
  data, status_code, headers = api_instance.get_api_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetApiKeysResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->get_api_keys_with_http_info: #{e}"
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
| **search** | **String** | General search, e.g. by id or description | [optional] |

### Return type

[**GetApiKeysResponse**](GetApiKeysResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## update_api_key

> <ApiKeyResponse> update_api_key(id, opts)

Update API key

Updates an existing API key by its ID.  Use this endpoint to change the key's status (active/inactive) or update its description. 

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::ApiKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  api_key_update_request: DigitalFemsa::ApiKeyUpdateRequest.new # ApiKeyUpdateRequest | 
}

begin
  # Update API key
  result = api_instance.update_api_key(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->update_api_key: #{e}"
end
```

#### Using the update_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponse>, Integer, Hash)> update_api_key_with_http_info(id, opts)

```ruby
begin
  # Update API key
  data, status_code, headers = api_instance.update_api_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling ApiKeysApi->update_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **api_key_update_request** | [**ApiKeyUpdateRequest**](ApiKeyUpdateRequest.md) |  | [optional] |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json

