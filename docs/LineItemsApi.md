# OpenapiClient::LineItemsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_checkout_line_item**](LineItemsApi.md#create_checkout_line_item) | **POST** /checkouts/{checkout_id}/line_items | Create checkout line item |
| [**create_order_line_item**](LineItemsApi.md#create_order_line_item) | **POST** /orders/{order_number}/line_items | Create order line item |
| [**delete_checkout_line_item**](LineItemsApi.md#delete_checkout_line_item) | **DELETE** /checkouts/{checkout_id}/line_items/{id} | Delete checkout line item |
| [**delete_order_line_item**](LineItemsApi.md#delete_order_line_item) | **DELETE** /orders/{order_number}/line_items/{id} | Delete order line item |
| [**update_checkout_line_item**](LineItemsApi.md#update_checkout_line_item) | **PATCH** /checkouts/{checkout_id}/line_items/{id} | Update checkout line item |
| [**update_order_line_item**](LineItemsApi.md#update_order_line_item) | **PATCH** /orders/{order_number}/line_items/{id} | Update order line item |


## create_checkout_line_item

> <LineItem> create_checkout_line_item(checkout_id, opts)

Create checkout line item

Create a line item in an checkout not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  It is not possible to add a line item to a completed order.

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

api_instance = OpenapiClient::LineItemsApi.new
checkout_id = 'checkout_id_example' # String | The order number
opts = {
  create_order_line_item_request: OpenapiClient::CreateOrderLineItemRequest.new # CreateOrderLineItemRequest | 
}

begin
  # Create checkout line item
  result = api_instance.create_checkout_line_item(checkout_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->create_checkout_line_item: #{e}"
end
```

#### Using the create_checkout_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LineItem>, Integer, Hash)> create_checkout_line_item_with_http_info(checkout_id, opts)

```ruby
begin
  # Create checkout line item
  data, status_code, headers = api_instance.create_checkout_line_item_with_http_info(checkout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->create_checkout_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **create_order_line_item_request** | [**CreateOrderLineItemRequest**](CreateOrderLineItemRequest.md) |  | [optional] |

### Return type

[**LineItem**](LineItem.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_order_line_item

> <LineItem> create_order_line_item(order_number, opts)

Create order line item

Create a line item in an order not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).

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

api_instance = OpenapiClient::LineItemsApi.new
order_number = 'order_number_example' # String | 
opts = {
  create_order_line_item_request: OpenapiClient::CreateOrderLineItemRequest.new # CreateOrderLineItemRequest | 
}

begin
  # Create order line item
  result = api_instance.create_order_line_item(order_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->create_order_line_item: #{e}"
end
```

#### Using the create_order_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LineItem>, Integer, Hash)> create_order_line_item_with_http_info(order_number, opts)

```ruby
begin
  # Create order line item
  data, status_code, headers = api_instance.create_order_line_item_with_http_info(order_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->create_order_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **create_order_line_item_request** | [**CreateOrderLineItemRequest**](CreateOrderLineItemRequest.md) |  | [optional] |

### Return type

[**LineItem**](LineItem.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_checkout_line_item

> <LineItem> delete_checkout_line_item(checkout_id, id)

Delete checkout line item

Deletes a checkout's line item.

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

api_instance = OpenapiClient::LineItemsApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | The id of the line item to update

begin
  # Delete checkout line item
  result = api_instance.delete_checkout_line_item(checkout_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->delete_checkout_line_item: #{e}"
end
```

#### Using the delete_checkout_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LineItem>, Integer, Hash)> delete_checkout_line_item_with_http_info(checkout_id, id)

```ruby
begin
  # Delete checkout line item
  data, status_code, headers = api_instance.delete_checkout_line_item_with_http_info(checkout_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->delete_checkout_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** | The id of the line item to update |  |

### Return type

[**LineItem**](LineItem.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_order_line_item

> <LineItem> delete_order_line_item(order_number, id)

Delete order line item

Deletes an order's line item.

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

api_instance = OpenapiClient::LineItemsApi.new
order_number = 'order_number_example' # String | The order number
id = 'id_example' # String | The id of the line item to update

begin
  # Delete order line item
  result = api_instance.delete_order_line_item(order_number, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->delete_order_line_item: #{e}"
end
```

#### Using the delete_order_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LineItem>, Integer, Hash)> delete_order_line_item_with_http_info(order_number, id)

```ruby
begin
  # Delete order line item
  data, status_code, headers = api_instance.delete_order_line_item_with_http_info(order_number, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->delete_order_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **id** | **String** | The id of the line item to update |  |

### Return type

[**LineItem**](LineItem.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_checkout_line_item

> <LineItem> update_checkout_line_item(checkout_id, id, opts)

Update checkout line item

Update line item's information in an checkout not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  It is not possible to add a line item to a completed order.

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

api_instance = OpenapiClient::LineItemsApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | The id of the line item to update
opts = {
  create_order_line_item_request: OpenapiClient::CreateOrderLineItemRequest.new # CreateOrderLineItemRequest | 
}

begin
  # Update checkout line item
  result = api_instance.update_checkout_line_item(checkout_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->update_checkout_line_item: #{e}"
end
```

#### Using the update_checkout_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LineItem>, Integer, Hash)> update_checkout_line_item_with_http_info(checkout_id, id, opts)

```ruby
begin
  # Update checkout line item
  data, status_code, headers = api_instance.update_checkout_line_item_with_http_info(checkout_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->update_checkout_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** | The id of the line item to update |  |
| **create_order_line_item_request** | [**CreateOrderLineItemRequest**](CreateOrderLineItemRequest.md) |  | [optional] |

### Return type

[**LineItem**](LineItem.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_order_line_item

> <LineItem> update_order_line_item(order_number, id, opts)

Update order line item

Update line item's information in an order not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).

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

api_instance = OpenapiClient::LineItemsApi.new
order_number = 'order_number_example' # String | The order number
id = 'id_example' # String | The id of the line item to update
opts = {
  create_order_line_item_request: OpenapiClient::CreateOrderLineItemRequest.new # CreateOrderLineItemRequest | 
}

begin
  # Update order line item
  result = api_instance.update_order_line_item(order_number, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->update_order_line_item: #{e}"
end
```

#### Using the update_order_line_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LineItem>, Integer, Hash)> update_order_line_item_with_http_info(order_number, id, opts)

```ruby
begin
  # Update order line item
  data, status_code, headers = api_instance.update_order_line_item_with_http_info(order_number, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LineItemsApi->update_order_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **id** | **String** | The id of the line item to update |  |
| **create_order_line_item_request** | [**CreateOrderLineItemRequest**](CreateOrderLineItemRequest.md) |  | [optional] |

### Return type

[**LineItem**](LineItem.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

