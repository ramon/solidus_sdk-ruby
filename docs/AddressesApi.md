# OpenapiClient::AddressesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_checkout_address**](AddressesApi.md#get_checkout_address) | **GET** /checkouts/{checkout_id}/addresses/{id} | Get checkout address |
| [**get_order_address**](AddressesApi.md#get_order_address) | **GET** /orders/{order_number}/addresses/{id} | Get order address |
| [**update_checkout_address**](AddressesApi.md#update_checkout_address) | **PATCH** /checkouts/{checkout_id}/addresses/{id} | Update checkout address |
| [**update_order_address**](AddressesApi.md#update_order_address) | **PATCH** /orders/{order_number}/addresses/{id} | Update order address |


## get_checkout_address

> <Address> get_checkout_address(checkout_id, id)

Get checkout address

Retrieves a checkout's address.

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

api_instance = OpenapiClient::AddressesApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | 

begin
  # Get checkout address
  result = api_instance.get_checkout_address(checkout_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressesApi->get_checkout_address: #{e}"
end
```

#### Using the get_checkout_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Address>, Integer, Hash)> get_checkout_address_with_http_info(checkout_id, id)

```ruby
begin
  # Get checkout address
  data, status_code, headers = api_instance.get_checkout_address_with_http_info(checkout_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Address>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressesApi->get_checkout_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** |  |  |

### Return type

[**Address**](Address.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_address

> <Address> get_order_address(order_number, id)

Get order address

Retrieves an order's address.

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

api_instance = OpenapiClient::AddressesApi.new
order_number = 'order_number_example' # String | The order number
id = 'id_example' # String | The id of the order's address that we want to retrieve

begin
  # Get order address
  result = api_instance.get_order_address(order_number, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressesApi->get_order_address: #{e}"
end
```

#### Using the get_order_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Address>, Integer, Hash)> get_order_address_with_http_info(order_number, id)

```ruby
begin
  # Get order address
  data, status_code, headers = api_instance.get_order_address_with_http_info(order_number, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Address>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressesApi->get_order_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **id** | **String** | The id of the order&#39;s address that we want to retrieve |  |

### Return type

[**Address**](Address.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_checkout_address

> <Address> update_checkout_address(checkout_id, id, opts)

Update checkout address

Updates a checkout's address.

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

api_instance = OpenapiClient::AddressesApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | 
opts = {
  update_checkout_address_request: OpenapiClient::UpdateCheckoutAddressRequest.new # UpdateCheckoutAddressRequest | 
}

begin
  # Update checkout address
  result = api_instance.update_checkout_address(checkout_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressesApi->update_checkout_address: #{e}"
end
```

#### Using the update_checkout_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Address>, Integer, Hash)> update_checkout_address_with_http_info(checkout_id, id, opts)

```ruby
begin
  # Update checkout address
  data, status_code, headers = api_instance.update_checkout_address_with_http_info(checkout_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Address>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressesApi->update_checkout_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** |  |  |
| **update_checkout_address_request** | [**UpdateCheckoutAddressRequest**](UpdateCheckoutAddressRequest.md) |  | [optional] |

### Return type

[**Address**](Address.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_order_address

> <Address> update_order_address(order_number, id, opts)

Update order address

Updates an order's address.

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

api_instance = OpenapiClient::AddressesApi.new
order_number = 'order_number_example' # String | The order number
id = 'id_example' # String | The id of the order's address that we want to retrieve
opts = {
  update_checkout_address_request: OpenapiClient::UpdateCheckoutAddressRequest.new # UpdateCheckoutAddressRequest | 
}

begin
  # Update order address
  result = api_instance.update_order_address(order_number, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressesApi->update_order_address: #{e}"
end
```

#### Using the update_order_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Address>, Integer, Hash)> update_order_address_with_http_info(order_number, id, opts)

```ruby
begin
  # Update order address
  data, status_code, headers = api_instance.update_order_address_with_http_info(order_number, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Address>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressesApi->update_order_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **id** | **String** | The id of the order&#39;s address that we want to retrieve |  |
| **update_checkout_address_request** | [**UpdateCheckoutAddressRequest**](UpdateCheckoutAddressRequest.md) |  | [optional] |

### Return type

[**Address**](Address.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

