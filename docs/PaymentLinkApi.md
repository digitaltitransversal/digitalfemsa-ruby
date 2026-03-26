# DigitalFemsa::PaymentLinkApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_checkout**](PaymentLinkApi.md#cancel_checkout) | **PUT** /checkouts/{id}/cancel | Cancel Payment Link |
| [**create_checkout**](PaymentLinkApi.md#create_checkout) | **POST** /checkouts | Create Payment Link |
| [**email_checkout**](PaymentLinkApi.md#email_checkout) | **POST** /checkouts/{id}/email | Send an email |
| [**get_checkout**](PaymentLinkApi.md#get_checkout) | **GET** /checkouts/{id} | Get a payment link by ID |
| [**get_checkouts**](PaymentLinkApi.md#get_checkouts) | **GET** /checkouts | Get a list of payment links |


## cancel_checkout

> <CheckoutResponse> cancel_checkout(id, opts)

Cancel Payment Link

Cancels an existing payment link. After cancellation, the link can no longer be used to generate new payments. This operation is idempotent: cancelling an already cancelled payment link returns the current resource representation.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::PaymentLinkApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Cancel Payment Link
  result = api_instance.cancel_checkout(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->cancel_checkout: #{e}"
end
```

#### Using the cancel_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> cancel_checkout_with_http_info(id, opts)

```ruby
begin
  # Cancel Payment Link
  data, status_code, headers = api_instance.cancel_checkout_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->cancel_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## create_checkout

> <CheckoutResponse> create_checkout(checkout, opts)

Create Payment Link

Creates a Payment Link: a shareable URL that lets your customer pay without you building a custom checkout. Configure the link type, allowed payment methods, and expiration. The request also includes an order_template (currency and line items) used to generate an Order when the customer completes a payment. Use recurrent=false for a single-use link, or recurrent=true to allow multiple payments (limited by payments_limit_count).

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::PaymentLinkApi.new
checkout = DigitalFemsa::Checkout.new({name: 'Payment Link Name', type: 'PaymentLink', recurrent: false, allowed_payment_methods: ["cash"], needs_shipping_contact: false, expires_at: 1680397724, order_template: DigitalFemsa::CheckoutOrderTemplate.new({currency: 'MXN', line_items: [DigitalFemsa::Product.new({name: 'Box of Cohiba', unit_price: 20000, quantity: 1})]})}) # Checkout | requested field for checkout
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Payment Link
  result = api_instance.create_checkout(checkout, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->create_checkout: #{e}"
end
```

#### Using the create_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> create_checkout_with_http_info(checkout, opts)

```ruby
begin
  # Create Payment Link
  data, status_code, headers = api_instance.create_checkout_with_http_info(checkout, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->create_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout** | [**Checkout**](Checkout.md) | requested field for checkout |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## email_checkout

> <CheckoutResponse> email_checkout(id, email_checkout_request, opts)

Send an email

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::PaymentLinkApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
email_checkout_request = DigitalFemsa::EmailCheckoutRequest.new({email: 'example@femsa.com'}) # EmailCheckoutRequest | requested field for sms checkout
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Send an email
  result = api_instance.email_checkout(id, email_checkout_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->email_checkout: #{e}"
end
```

#### Using the email_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> email_checkout_with_http_info(id, email_checkout_request, opts)

```ruby
begin
  # Send an email
  data, status_code, headers = api_instance.email_checkout_with_http_info(id, email_checkout_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->email_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **email_checkout_request** | [**EmailCheckoutRequest**](EmailCheckoutRequest.md) | requested field for sms checkout |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## get_checkout

> <CheckoutResponse> get_checkout(id, opts)

Get a payment link by ID

Retrieves the details of a checkout by its ID.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::PaymentLinkApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get a payment link by ID
  result = api_instance.get_checkout(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->get_checkout: #{e}"
end
```

#### Using the get_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> get_checkout_with_http_info(id, opts)

```ruby
begin
  # Get a payment link by ID
  data, status_code, headers = api_instance.get_checkout_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->get_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_checkouts

> <CheckoutsResponse> get_checkouts(opts)

Get a list of payment links

Returns a paginated list of payment links created by the merchant. Results can be navigated using the pagination parameters.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::PaymentLinkApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get a list of payment links
  result = api_instance.get_checkouts(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->get_checkouts: #{e}"
end
```

#### Using the get_checkouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutsResponse>, Integer, Hash)> get_checkouts_with_http_info(opts)

```ruby
begin
  # Get a list of payment links
  data, status_code, headers = api_instance.get_checkouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutsResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling PaymentLinkApi->get_checkouts_with_http_info: #{e}"
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

[**CheckoutsResponse**](CheckoutsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json

