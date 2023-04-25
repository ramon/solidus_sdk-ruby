# OpenapiClient::SubscriptionsApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**patch_subscriptions_api_v1_subscriptions_id**](SubscriptionsApi.md#patch_subscriptions_api_v1_subscriptions_id) | **PATCH** /subscriptions/api/v1/subscriptions/{id} | Update Subscription |
| [**post_subscriptions_api_v1_subscriptions_id_activate**](SubscriptionsApi.md#post_subscriptions_api_v1_subscriptions_id_activate) | **POST** /subscriptions/api/v1/subscriptions/{id}/activate | Activate Subscription |
| [**post_subscriptions_api_v1_subscriptions_id_cancel**](SubscriptionsApi.md#post_subscriptions_api_v1_subscriptions_id_cancel) | **POST** /subscriptions/api/v1/subscriptions/{id}/cancel | Cancel Subscription |
| [**post_subscriptions_api_v1_subscriptions_id_skip**](SubscriptionsApi.md#post_subscriptions_api_v1_subscriptions_id_skip) | **POST** /subscriptions/api/v1/subscriptions/:id/skip | Skip Subscription |


## patch_subscriptions_api_v1_subscriptions_id

> <PatchSubscriptionsApiV1SubscriptionsId200Response> patch_subscriptions_api_v1_subscriptions_id(id, opts)

Update Subscription

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SubscriptionsApi.new
id = 'id_example' # String | 
opts = {
  patch_subscriptions_api_v1_subscriptions_id_request: OpenapiClient::PatchSubscriptionsApiV1SubscriptionsIdRequest.new # PatchSubscriptionsApiV1SubscriptionsIdRequest | 
}

begin
  # Update Subscription
  result = api_instance.patch_subscriptions_api_v1_subscriptions_id(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->patch_subscriptions_api_v1_subscriptions_id: #{e}"
end
```

#### Using the patch_subscriptions_api_v1_subscriptions_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchSubscriptionsApiV1SubscriptionsId200Response>, Integer, Hash)> patch_subscriptions_api_v1_subscriptions_id_with_http_info(id, opts)

```ruby
begin
  # Update Subscription
  data, status_code, headers = api_instance.patch_subscriptions_api_v1_subscriptions_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchSubscriptionsApiV1SubscriptionsId200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->patch_subscriptions_api_v1_subscriptions_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **patch_subscriptions_api_v1_subscriptions_id_request** | [**PatchSubscriptionsApiV1SubscriptionsIdRequest**](PatchSubscriptionsApiV1SubscriptionsIdRequest.md) |  | [optional] |

### Return type

[**PatchSubscriptionsApiV1SubscriptionsId200Response**](PatchSubscriptionsApiV1SubscriptionsId200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_subscriptions_api_v1_subscriptions_id_activate

> <SubscriptionOutput> post_subscriptions_api_v1_subscriptions_id_activate(id)

Activate Subscription

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SubscriptionsApi.new
id = 'id_example' # String | 

begin
  # Activate Subscription
  result = api_instance.post_subscriptions_api_v1_subscriptions_id_activate(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->post_subscriptions_api_v1_subscriptions_id_activate: #{e}"
end
```

#### Using the post_subscriptions_api_v1_subscriptions_id_activate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionOutput>, Integer, Hash)> post_subscriptions_api_v1_subscriptions_id_activate_with_http_info(id)

```ruby
begin
  # Activate Subscription
  data, status_code, headers = api_instance.post_subscriptions_api_v1_subscriptions_id_activate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->post_subscriptions_api_v1_subscriptions_id_activate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**SubscriptionOutput**](SubscriptionOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_subscriptions_api_v1_subscriptions_id_cancel

> <SubscriptionOutput> post_subscriptions_api_v1_subscriptions_id_cancel(id)

Cancel Subscription

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SubscriptionsApi.new
id = 'id_example' # String | 

begin
  # Cancel Subscription
  result = api_instance.post_subscriptions_api_v1_subscriptions_id_cancel(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->post_subscriptions_api_v1_subscriptions_id_cancel: #{e}"
end
```

#### Using the post_subscriptions_api_v1_subscriptions_id_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionOutput>, Integer, Hash)> post_subscriptions_api_v1_subscriptions_id_cancel_with_http_info(id)

```ruby
begin
  # Cancel Subscription
  data, status_code, headers = api_instance.post_subscriptions_api_v1_subscriptions_id_cancel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->post_subscriptions_api_v1_subscriptions_id_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**SubscriptionOutput**](SubscriptionOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_subscriptions_api_v1_subscriptions_id_skip

> <SubscriptionOutput> post_subscriptions_api_v1_subscriptions_id_skip

Skip Subscription

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SubscriptionsApi.new

begin
  # Skip Subscription
  result = api_instance.post_subscriptions_api_v1_subscriptions_id_skip
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->post_subscriptions_api_v1_subscriptions_id_skip: #{e}"
end
```

#### Using the post_subscriptions_api_v1_subscriptions_id_skip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionOutput>, Integer, Hash)> post_subscriptions_api_v1_subscriptions_id_skip_with_http_info

```ruby
begin
  # Skip Subscription
  data, status_code, headers = api_instance.post_subscriptions_api_v1_subscriptions_id_skip_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->post_subscriptions_api_v1_subscriptions_id_skip_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SubscriptionOutput**](SubscriptionOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

