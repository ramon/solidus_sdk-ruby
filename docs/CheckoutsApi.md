# OpenapiClient::CheckoutsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**advance_checkout**](CheckoutsApi.md#advance_checkout) | **PUT** /checkouts/{checkout_id}/advance | Advance checkout |
| [**complete_checkout**](CheckoutsApi.md#complete_checkout) | **PUT** /checkouts/{checkout_id}/complete | Complete checkout |
| [**transition_checkout**](CheckoutsApi.md#transition_checkout) | **PUT** /checkouts/{checkout_id}/next | Transition checkout |
| [**update_checkout**](CheckoutsApi.md#update_checkout) | **PATCH** /checkouts/{id} | Update checkout |


## advance_checkout

> <OrderBig> advance_checkout(checkout_id)

Advance checkout

Advances a checkout to the furthest possible state.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::CheckoutsApi.new
checkout_id = 'checkout_id_example' # String | The order number

begin
  # Advance checkout
  result = api_instance.advance_checkout(checkout_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->advance_checkout: #{e}"
end
```

#### Using the advance_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> advance_checkout_with_http_info(checkout_id)

```ruby
begin
  # Advance checkout
  data, status_code, headers = api_instance.advance_checkout_with_http_info(checkout_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->advance_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## complete_checkout

> <OrderBig> complete_checkout(checkout_id, opts)

Complete checkout

Completes a checkout.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::CheckoutsApi.new
checkout_id = 'checkout_id_example' # String | The order number
opts = {
  complete_checkout_request: OpenapiClient::CompleteCheckoutRequest.new # CompleteCheckoutRequest | 
}

begin
  # Complete checkout
  result = api_instance.complete_checkout(checkout_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->complete_checkout: #{e}"
end
```

#### Using the complete_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> complete_checkout_with_http_info(checkout_id, opts)

```ruby
begin
  # Complete checkout
  data, status_code, headers = api_instance.complete_checkout_with_http_info(checkout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->complete_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **complete_checkout_request** | [**CompleteCheckoutRequest**](CompleteCheckoutRequest.md) |  | [optional] |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transition_checkout

> <OrderBig> transition_checkout(checkout_id, opts)

Transition checkout

Transitions a checkout to the next state.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::CheckoutsApi.new
checkout_id = 'checkout_id_example' # String | The order number
opts = {
  complete_checkout_request: OpenapiClient::CompleteCheckoutRequest.new # CompleteCheckoutRequest | 
}

begin
  # Transition checkout
  result = api_instance.transition_checkout(checkout_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->transition_checkout: #{e}"
end
```

#### Using the transition_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> transition_checkout_with_http_info(checkout_id, opts)

```ruby
begin
  # Transition checkout
  data, status_code, headers = api_instance.transition_checkout_with_http_info(checkout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->transition_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **complete_checkout_request** | [**CompleteCheckoutRequest**](CompleteCheckoutRequest.md) |  | [optional] |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_checkout

> <OrderBig> update_checkout(id, opts)

Update checkout

Updates a checkout and moves the order to the next checkout step. A request with an empty body is legit and only tries to move the order to the next step.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  **Note:** In addition to the order update, this action always attempts to perform an order state machine transition which results in a `422` response if it cannot be transitioned.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::CheckoutsApi.new
id = 'id_example' # String | The order number
opts = {
  update_order_request: OpenapiClient::UpdateOrderRequest.new # UpdateOrderRequest | 
}

begin
  # Update checkout
  result = api_instance.update_checkout(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->update_checkout: #{e}"
end
```

#### Using the update_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> update_checkout_with_http_info(id, opts)

```ruby
begin
  # Update checkout
  data, status_code, headers = api_instance.update_checkout_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->update_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The order number |  |
| **update_order_request** | [**UpdateOrderRequest**](UpdateOrderRequest.md) |  | [optional] |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

