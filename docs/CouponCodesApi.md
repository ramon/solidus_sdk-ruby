# OpenapiClient::CouponCodesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_order_coupon_code**](CouponCodesApi.md#create_order_coupon_code) | **POST** /orders/{order_number}/coupon_codes | Create order coupon code |
| [**delete_order_coupon_code**](CouponCodesApi.md#delete_order_coupon_code) | **DELETE** /orders/{order_number}/coupon_codes/{id} | Delete order coupon code |


## create_order_coupon_code

> <CouponCodeHandler> create_order_coupon_code(order_number, opts)

Create order coupon code

Creates a coupon code for an order.  To perform this operation the request should be made as the order's owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).

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

api_instance = OpenapiClient::CouponCodesApi.new
order_number = 'order_number_example' # String | The order number
opts = {
  coupon_code_input: OpenapiClient::CouponCodeInput.new # CouponCodeInput | 
}

begin
  # Create order coupon code
  result = api_instance.create_order_coupon_code(order_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponCodesApi->create_order_coupon_code: #{e}"
end
```

#### Using the create_order_coupon_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CouponCodeHandler>, Integer, Hash)> create_order_coupon_code_with_http_info(order_number, opts)

```ruby
begin
  # Create order coupon code
  data, status_code, headers = api_instance.create_order_coupon_code_with_http_info(order_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CouponCodeHandler>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponCodesApi->create_order_coupon_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **coupon_code_input** | [**CouponCodeInput**](CouponCodeInput.md) |  | [optional] |

### Return type

[**CouponCodeHandler**](CouponCodeHandler.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_order_coupon_code

> <CouponCodeHandler> delete_order_coupon_code(order_number, id)

Delete order coupon code

Deletes an order's coupon code.  To perform this operation the request should be made as the order's owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).

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

api_instance = OpenapiClient::CouponCodesApi.new
order_number = 'order_number_example' # String | The order number
id = 'id_example' # String | This is the coupon code

begin
  # Delete order coupon code
  result = api_instance.delete_order_coupon_code(order_number, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponCodesApi->delete_order_coupon_code: #{e}"
end
```

#### Using the delete_order_coupon_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CouponCodeHandler>, Integer, Hash)> delete_order_coupon_code_with_http_info(order_number, id)

```ruby
begin
  # Delete order coupon code
  data, status_code, headers = api_instance.delete_order_coupon_code_with_http_info(order_number, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CouponCodeHandler>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponCodesApi->delete_order_coupon_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **id** | **String** | This is the coupon code |  |

### Return type

[**CouponCodeHandler**](CouponCodeHandler.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

