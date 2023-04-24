# OpenapiClient::OrdersApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_order**](OrdersApi.md#cancel_order) | **PUT** /orders/{order_number}/cancel | Cancel order |
| [**create_order**](OrdersApi.md#create_order) | **POST** /orders | Create order |
| [**empty_order**](OrdersApi.md#empty_order) | **PUT** /orders/{order_number}/empty | Empty order |
| [**get_current_order**](OrdersApi.md#get_current_order) | **GET** /orders/current | Get current order |
| [**get_order**](OrdersApi.md#get_order) | **GET** /orders/{number} | Get order |
| [**list_orders**](OrdersApi.md#list_orders) | **GET** /orders | List orders |
| [**list_user_orders**](OrdersApi.md#list_user_orders) | **GET** /orders/mine | List user&#39;s orders |
| [**update_order**](OrdersApi.md#update_order) | **PATCH** /orders/{number} | Update order |


## cancel_order

> <OrderBig> cancel_order(order_number)

Cancel order

Cancels an order.

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

api_instance = OpenapiClient::OrdersApi.new
order_number = 'order_number_example' # String | 

begin
  # Cancel order
  result = api_instance.cancel_order(order_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->cancel_order: #{e}"
end
```

#### Using the cancel_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> cancel_order_with_http_info(order_number)

```ruby
begin
  # Cancel order
  data, status_code, headers = api_instance.cancel_order_with_http_info(order_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->cancel_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order

> <OrderBig> create_order(opts)

Create order

Creates a new order.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrdersApi.new
opts = {
  update_order_request: OpenapiClient::UpdateOrderRequest.new # UpdateOrderRequest | 
}

begin
  # Create order
  result = api_instance.create_order(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> create_order_with_http_info(opts)

```ruby
begin
  # Create order
  data, status_code, headers = api_instance.create_order_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_order_request** | [**UpdateOrderRequest**](UpdateOrderRequest.md) |  | [optional] |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## empty_order

> <OrderBig> empty_order(order_number)

Empty order

Empties an order's cart.

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

api_instance = OpenapiClient::OrdersApi.new
order_number = 'order_number_example' # String | 

begin
  # Empty order
  result = api_instance.empty_order(order_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->empty_order: #{e}"
end
```

#### Using the empty_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> empty_order_with_http_info(order_number)

```ruby
begin
  # Empty order
  data, status_code, headers = api_instance.empty_order_with_http_info(order_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->empty_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_current_order

> <OrderBig> get_current_order

Get current order

Retrieves the user's current order.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrdersApi.new

begin
  # Get current order
  result = api_instance.get_current_order
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->get_current_order: #{e}"
end
```

#### Using the get_current_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> get_current_order_with_http_info

```ruby
begin
  # Get current order
  data, status_code, headers = api_instance.get_current_order_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->get_current_order_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order

> <OrderBig> get_order(number)

Get order

Retrieves an order.

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

api_instance = OpenapiClient::OrdersApi.new
number = 'number_example' # String | The order number

begin
  # Get order
  result = api_instance.get_order(number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->get_order: #{e}"
end
```

#### Using the get_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> get_order_with_http_info(number)

```ruby
begin
  # Get order
  data, status_code, headers = api_instance.get_order_with_http_info(number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->get_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The order number |  |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_orders

> <ListUserOrders200Response> list_orders(opts)

List orders

Lists all orders.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrdersApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List orders
  result = api_instance.list_orders(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->list_orders: #{e}"
end
```

#### Using the list_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUserOrders200Response>, Integer, Hash)> list_orders_with_http_info(opts)

```ruby
begin
  # List orders
  data, status_code, headers = api_instance.list_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUserOrders200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->list_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListUserOrders200Response**](ListUserOrders200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_orders

> <ListUserOrders200Response> list_user_orders(opts)

List user's orders

Lists the orders that belong to the current user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrdersApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List user's orders
  result = api_instance.list_user_orders(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->list_user_orders: #{e}"
end
```

#### Using the list_user_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUserOrders200Response>, Integer, Hash)> list_user_orders_with_http_info(opts)

```ruby
begin
  # List user's orders
  data, status_code, headers = api_instance.list_user_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUserOrders200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->list_user_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListUserOrders200Response**](ListUserOrders200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order

> <OrderBig> update_order(number, opts)

Update order

Updates an order.  To perform this operation the request should be made as the order's owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).

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

api_instance = OpenapiClient::OrdersApi.new
number = 'number_example' # String | The order number
opts = {
  update_order_request: OpenapiClient::UpdateOrderRequest.new # UpdateOrderRequest | 
}

begin
  # Update order
  result = api_instance.update_order(number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->update_order: #{e}"
end
```

#### Using the update_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderBig>, Integer, Hash)> update_order_with_http_info(number, opts)

```ruby
begin
  # Update order
  data, status_code, headers = api_instance.update_order_with_http_info(number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderBig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrdersApi->update_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The order number |  |
| **update_order_request** | [**UpdateOrderRequest**](UpdateOrderRequest.md) |  | [optional] |

### Return type

[**OrderBig**](OrderBig.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

