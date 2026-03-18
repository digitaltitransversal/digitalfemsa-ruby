# DigitalFemsa::WebhooksApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /webhooks | Create webhook |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{id} | Delete webhook |
| [**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /webhooks/{id} | Get webhook |
| [**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Get webhooks |
| [**test_webhook**](WebhooksApi.md#test_webhook) | **POST** /webhooks/{id}/test | Test webhook |
| [**update_webhook**](WebhooksApi.md#update_webhook) | **PUT** /webhooks/{id} | Update webhook |


## create_webhook

> <WebhookResponse> create_webhook(webhook_request, opts)

Create webhook

Creates a webhook and subscribes it to events so your system can receive notifications when those events occur.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhooksApi.new
webhook_request = DigitalFemsa::WebhookRequest.new({url: 'https://webhook.site/89277eaa-a8e4-4306-8dc5-f55c80703dc8'}) # WebhookRequest | Webhook creation/update request payload.
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create webhook
  result = api_instance.create_webhook(webhook_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> create_webhook_with_http_info(webhook_request, opts)

```ruby
begin
  # Create webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(webhook_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_request** | [**WebhookRequest**](WebhookRequest.md) | Webhook creation/update request payload. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## delete_webhook

> <WebhookResponse> delete_webhook(id, opts)

Delete webhook

Deletes a webhook.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhooksApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Delete webhook
  result = api_instance.delete_webhook(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> delete_webhook_with_http_info(id, opts)

```ruby
begin
  # Delete webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_webhook

> <WebhookResponse> get_webhook(id, opts)

Get webhook

Retrieves the details of a webhook by its ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhooksApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get webhook
  result = api_instance.get_webhook(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> get_webhook_with_http_info(id, opts)

```ruby
begin
  # Get webhook
  data, status_code, headers = api_instance.get_webhook_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_webhooks

> <GetWebhooksResponse> get_webhooks(webhook_request, opts)

Get webhooks

Consume the list of webhooks you have, each environment supports 10 webhooks (For production and testing)

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhooksApi.new
webhook_request = DigitalFemsa::WebhookRequest.new({url: 'https://webhook.site/89277eaa-a8e4-4306-8dc5-f55c80703dc8'}) # WebhookRequest | Webhook creation/update request payload.
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  url: 'https://api.digitalfemsa.io/webhook', # String | url for webhook filter
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get webhooks
  result = api_instance.get_webhooks(webhook_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooksResponse>, Integer, Hash)> get_webhooks_with_http_info(webhook_request, opts)

```ruby
begin
  # Get webhooks
  data, status_code, headers = api_instance.get_webhooks_with_http_info(webhook_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooksResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_request** | [**WebhookRequest**](WebhookRequest.md) | Webhook creation/update request payload. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **url** | **String** | url for webhook filter | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**GetWebhooksResponse**](GetWebhooksResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## test_webhook

> <WebhookResponse> test_webhook(id, opts)

Test webhook

Sends a test event to the specified webhook to verify it can receive events.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhooksApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Test webhook
  result = api_instance.test_webhook(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook: #{e}"
end
```

#### Using the test_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> test_webhook_with_http_info(id, opts)

```ruby
begin
  # Test webhook
  data, status_code, headers = api_instance.test_webhook_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## update_webhook

> <WebhookResponse> update_webhook(id, webhook_update_request, opts)

Update webhook

Updates an existing webhook.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::WebhooksApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
webhook_update_request = DigitalFemsa::WebhookUpdateRequest.new # WebhookUpdateRequest | Webhook update request payload.
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update webhook
  result = api_instance.update_webhook(id, webhook_update_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> update_webhook_with_http_info(id, webhook_update_request, opts)

```ruby
begin
  # Update webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(id, webhook_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **webhook_update_request** | [**WebhookUpdateRequest**](WebhookUpdateRequest.md) | Webhook update request payload. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json

