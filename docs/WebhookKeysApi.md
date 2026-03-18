# DigitalFemsa::WebhookKeysApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_key**](WebhookKeysApi.md#create_webhook_key) | **POST** /webhook_keys | Create Webhook Key |
| [**delete_webhook_key**](WebhookKeysApi.md#delete_webhook_key) | **DELETE** /webhook_keys/{id} | Delete webhook key |
| [**get_webhook_key**](WebhookKeysApi.md#get_webhook_key) | **GET** /webhook_keys/{id} | Get webhook key |
| [**get_webhook_keys**](WebhookKeysApi.md#get_webhook_keys) | **GET** /webhook_keys | Get List of Webhook Keys |
| [**update_webhook_key**](WebhookKeysApi.md#update_webhook_key) | **PUT** /webhook_keys/{id} | Update webhook key |


## create_webhook_key

> <WebhookKeyCreateResponse> create_webhook_key(opts)

Create Webhook Key

Creates a new webhook signing key for the current company.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhookKeysApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  webhook_key_request: DigitalFemsa::WebhookKeyRequest.new # WebhookKeyRequest | 
}

begin
  # Create Webhook Key
  result = api_instance.create_webhook_key(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->create_webhook_key: #{e}"
end
```

#### Using the create_webhook_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookKeyCreateResponse>, Integer, Hash)> create_webhook_key_with_http_info(opts)

```ruby
begin
  # Create Webhook Key
  data, status_code, headers = api_instance.create_webhook_key_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookKeyCreateResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->create_webhook_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **webhook_key_request** | [**WebhookKeyRequest**](WebhookKeyRequest.md) |  | [optional] |

### Return type

[**WebhookKeyCreateResponse**](WebhookKeyCreateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## delete_webhook_key

> <WebhookKeyDeleteResponse> delete_webhook_key(id, opts)

Delete webhook key

Deletes a webhook signing key.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhookKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Delete webhook key
  result = api_instance.delete_webhook_key(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->delete_webhook_key: #{e}"
end
```

#### Using the delete_webhook_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookKeyDeleteResponse>, Integer, Hash)> delete_webhook_key_with_http_info(id, opts)

```ruby
begin
  # Delete webhook key
  data, status_code, headers = api_instance.delete_webhook_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookKeyDeleteResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->delete_webhook_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**WebhookKeyDeleteResponse**](WebhookKeyDeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_webhook_key

> <WebhookKeyResponse> get_webhook_key(id, opts)

Get webhook key

Retrieves the details of a webhook signing key by its ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhookKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get webhook key
  result = api_instance.get_webhook_key(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->get_webhook_key: #{e}"
end
```

#### Using the get_webhook_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookKeyResponse>, Integer, Hash)> get_webhook_key_with_http_info(id, opts)

```ruby
begin
  # Get webhook key
  data, status_code, headers = api_instance.get_webhook_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookKeyResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->get_webhook_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**WebhookKeyResponse**](WebhookKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_webhook_keys

> <GetWebhookKeysResponse> get_webhook_keys(opts)

Get List of Webhook Keys

Consume the list of webhook keys you have, each environment supports 10 webhook keys (For production and testing)

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhookKeysApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get List of Webhook Keys
  result = api_instance.get_webhook_keys(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->get_webhook_keys: #{e}"
end
```

#### Using the get_webhook_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhookKeysResponse>, Integer, Hash)> get_webhook_keys_with_http_info(opts)

```ruby
begin
  # Get List of Webhook Keys
  data, status_code, headers = api_instance.get_webhook_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhookKeysResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->get_webhook_keys_with_http_info: #{e}"
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

[**GetWebhookKeysResponse**](GetWebhookKeysResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## update_webhook_key

> <WebhookKeyResponse> update_webhook_key(id, opts)

Update webhook key

Activates or deactivates an existing webhook signing key.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhookKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  webhook_key_update_request: DigitalFemsa::WebhookKeyUpdateRequest.new # WebhookKeyUpdateRequest | 
}

begin
  # Update webhook key
  result = api_instance.update_webhook_key(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->update_webhook_key: #{e}"
end
```

#### Using the update_webhook_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookKeyResponse>, Integer, Hash)> update_webhook_key_with_http_info(id, opts)

```ruby
begin
  # Update webhook key
  data, status_code, headers = api_instance.update_webhook_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookKeyResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhookKeysApi->update_webhook_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **webhook_key_update_request** | [**WebhookKeyUpdateRequest**](WebhookKeyUpdateRequest.md) |  | [optional] |

### Return type

[**WebhookKeyResponse**](WebhookKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/vnd.app-v2.1.0+json
- **Accept**: application/vnd.app-v2.1.0+json

