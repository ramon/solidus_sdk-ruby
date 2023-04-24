# OpenapiClient::CustomerReturnsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_order_customer_return**](CustomerReturnsApi.md#create_order_customer_return) | **POST** /orders/{order_number}/customer_returns | Create order customer return |
| [**get_order_customer_return**](CustomerReturnsApi.md#get_order_customer_return) | **GET** /orders/{order_id}/customer_returns/{id} | Get order customer return |
| [**list_order_customer_returns**](CustomerReturnsApi.md#list_order_customer_returns) | **GET** /orders/{order_number}/customer_returns | List order customer returns |
| [**update_order_customer_return**](CustomerReturnsApi.md#update_order_customer_return) | **PUT** /orders/{order_id}/customer_returns/{id} | Update order customer return |


## create_order_customer_return

> <CustomerReturn> create_order_customer_return(order_number, opts)

Create order customer return

Creates a customer return for an order.  Only users with the `create` permission on `Spree::CustomerReturn` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CustomerReturnsApi.new
order_number = 'order_number_example' # String | The order number
opts = {
  update_order_customer_return_request: OpenapiClient::UpdateOrderCustomerReturnRequest.new # UpdateOrderCustomerReturnRequest | 
}

begin
  # Create order customer return
  result = api_instance.create_order_customer_return(order_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomerReturnsApi->create_order_customer_return: #{e}"
end
```

#### Using the create_order_customer_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerReturn>, Integer, Hash)> create_order_customer_return_with_http_info(order_number, opts)

```ruby
begin
  # Create order customer return
  data, status_code, headers = api_instance.create_order_customer_return_with_http_info(order_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerReturn>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomerReturnsApi->create_order_customer_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **update_order_customer_return_request** | [**UpdateOrderCustomerReturnRequest**](UpdateOrderCustomerReturnRequest.md) |  | [optional] |

### Return type

[**CustomerReturn**](CustomerReturn.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_order_customer_return

> Object get_order_customer_return(order_id, id)

Get order customer return

Gets an orders customer return.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CustomerReturnsApi.new
order_id = 'order_id_example' # String | The order number
id = 'id_example' # String | The id of the customer return

begin
  # Get order customer return
  result = api_instance.get_order_customer_return(order_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomerReturnsApi->get_order_customer_return: #{e}"
end
```

#### Using the get_order_customer_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_order_customer_return_with_http_info(order_id, id)

```ruby
begin
  # Get order customer return
  data, status_code, headers = api_instance.get_order_customer_return_with_http_info(order_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomerReturnsApi->get_order_customer_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | The order number |  |
| **id** | **String** | The id of the customer return |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_order_customer_returns

> <ListOrderCustomerReturns200Response> list_order_customer_returns(order_number, opts)

List order customer returns

Lists an order's customer returns.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CustomerReturnsApi.new
order_number = 'order_number_example' # String | The order number
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List order customer returns
  result = api_instance.list_order_customer_returns(order_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomerReturnsApi->list_order_customer_returns: #{e}"
end
```

#### Using the list_order_customer_returns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrderCustomerReturns200Response>, Integer, Hash)> list_order_customer_returns_with_http_info(order_number, opts)

```ruby
begin
  # List order customer returns
  data, status_code, headers = api_instance.list_order_customer_returns_with_http_info(order_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrderCustomerReturns200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomerReturnsApi->list_order_customer_returns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListOrderCustomerReturns200Response**](ListOrderCustomerReturns200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order_customer_return

> <CustomerReturn> update_order_customer_return(order_id, id, opts)

Update order customer return

Updates an orders customer return.  Only users with the `update` permission on the customer return can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CustomerReturnsApi.new
order_id = 'order_id_example' # String | The order number
id = 'id_example' # String | The id of the customer return
opts = {
  update_order_customer_return_request: OpenapiClient::UpdateOrderCustomerReturnRequest.new # UpdateOrderCustomerReturnRequest | 
}

begin
  # Update order customer return
  result = api_instance.update_order_customer_return(order_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomerReturnsApi->update_order_customer_return: #{e}"
end
```

#### Using the update_order_customer_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerReturn>, Integer, Hash)> update_order_customer_return_with_http_info(order_id, id, opts)

```ruby
begin
  # Update order customer return
  data, status_code, headers = api_instance.update_order_customer_return_with_http_info(order_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerReturn>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomerReturnsApi->update_order_customer_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | The order number |  |
| **id** | **String** | The id of the customer return |  |
| **update_order_customer_return_request** | [**UpdateOrderCustomerReturnRequest**](UpdateOrderCustomerReturnRequest.md) |  | [optional] |

### Return type

[**CustomerReturn**](CustomerReturn.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

