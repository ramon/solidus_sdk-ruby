# OpenapiClient::SubscriptionLineItemsApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_subscriptions_api_v1_line_item_id**](SubscriptionLineItemsApi.md#delete_subscriptions_api_v1_line_item_id) | **DELETE** /subscriptions/api/v1/line_items/{id} | Delete Subscription Line Item |
| [**patch_subscriptions_api_v1_line_item_id**](SubscriptionLineItemsApi.md#patch_subscriptions_api_v1_line_item_id) | **PATCH** /subscriptions/api/v1/line_items/{id} | Update Subscription Line Item |
| [**post_api_orders_order_id_line_items**](SubscriptionLineItemsApi.md#post_api_orders_order_id_line_items) | **POST** /api/orders/{order_id}/line_items | Create Subscription Line Item |


## delete_subscriptions_api_v1_line_item_id

> <SubscriptionLineItemOutput> delete_subscriptions_api_v1_line_item_id(id)

Delete Subscription Line Item



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SubscriptionLineItemsApi.new
id = 'id_example' # String | 

begin
  # Delete Subscription Line Item
  result = api_instance.delete_subscriptions_api_v1_line_item_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionLineItemsApi->delete_subscriptions_api_v1_line_item_id: #{e}"
end
```

#### Using the delete_subscriptions_api_v1_line_item_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionLineItemOutput>, Integer, Hash)> delete_subscriptions_api_v1_line_item_id_with_http_info(id)

```ruby
begin
  # Delete Subscription Line Item
  data, status_code, headers = api_instance.delete_subscriptions_api_v1_line_item_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionLineItemOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionLineItemsApi->delete_subscriptions_api_v1_line_item_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**SubscriptionLineItemOutput**](SubscriptionLineItemOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_subscriptions_api_v1_line_item_id

> <SubscriptionLineItemOutput> patch_subscriptions_api_v1_line_item_id(id, opts)

Update Subscription Line Item

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SubscriptionLineItemsApi.new
id = 'id_example' # String | 
opts = {
  post_api_orders_order_id_line_items_request: OpenapiClient::PostApiOrdersOrderIdLineItemsRequest.new # PostApiOrdersOrderIdLineItemsRequest | 
}

begin
  # Update Subscription Line Item
  result = api_instance.patch_subscriptions_api_v1_line_item_id(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionLineItemsApi->patch_subscriptions_api_v1_line_item_id: #{e}"
end
```

#### Using the patch_subscriptions_api_v1_line_item_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionLineItemOutput>, Integer, Hash)> patch_subscriptions_api_v1_line_item_id_with_http_info(id, opts)

```ruby
begin
  # Update Subscription Line Item
  data, status_code, headers = api_instance.patch_subscriptions_api_v1_line_item_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionLineItemOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionLineItemsApi->patch_subscriptions_api_v1_line_item_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **post_api_orders_order_id_line_items_request** | [**PostApiOrdersOrderIdLineItemsRequest**](PostApiOrdersOrderIdLineItemsRequest.md) |  | [optional] |

### Return type

[**SubscriptionLineItemOutput**](SubscriptionLineItemOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_api_orders_order_id_line_items

> post_api_orders_order_id_line_items(order_id, opts)

Create Subscription Line Item

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SubscriptionLineItemsApi.new
order_id = 'order_id_example' # String | 
opts = {
  post_api_orders_order_id_line_items_request: OpenapiClient::PostApiOrdersOrderIdLineItemsRequest.new # PostApiOrdersOrderIdLineItemsRequest | 
}

begin
  # Create Subscription Line Item
  api_instance.post_api_orders_order_id_line_items(order_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionLineItemsApi->post_api_orders_order_id_line_items: #{e}"
end
```

#### Using the post_api_orders_order_id_line_items_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_api_orders_order_id_line_items_with_http_info(order_id, opts)

```ruby
begin
  # Create Subscription Line Item
  data, status_code, headers = api_instance.post_api_orders_order_id_line_items_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionLineItemsApi->post_api_orders_order_id_line_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **post_api_orders_order_id_line_items_request** | [**PostApiOrdersOrderIdLineItemsRequest**](PostApiOrdersOrderIdLineItemsRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

