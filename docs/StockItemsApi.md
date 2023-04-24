# OpenapiClient::StockItemsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_stock_location_item**](StockItemsApi.md#create_stock_location_item) | **POST** /stock_locations/{stock_location_id}/stock_items | Create stock location item |
| [**delete_stock_item**](StockItemsApi.md#delete_stock_item) | **DELETE** /stock_items/{id} | Delete stock item |
| [**delete_stock_location_item**](StockItemsApi.md#delete_stock_location_item) | **DELETE** /stock_locations/{stock_location_id}/stock_items/{id} | Delete stock location item |
| [**get_stock_location_item**](StockItemsApi.md#get_stock_location_item) | **GET** /stock_locations/{stock_location_id}/stock_items/{id} | Get stock location item |
| [**list_stock_location_items**](StockItemsApi.md#list_stock_location_items) | **GET** /stock_locations/{stock_location_id}/stock_items | List stock location items |
| [**update_stock_item**](StockItemsApi.md#update_stock_item) | **PATCH** /stock_items/{id} | Update stock item |
| [**update_stock_location_item**](StockItemsApi.md#update_stock_location_item) | **PATCH** /stock_locations/{stock_location_id}/stock_items/{id} | Update stock location item |


## create_stock_location_item

> <StockItem> create_stock_location_item(stock_location_id, opts)

Create stock location item

Creates a stock item for a stock location.  Only users with the `create` permission on `Spree::StockItem` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockItemsApi.new
stock_location_id = 'stock_location_id_example' # String | 
opts = {
  create_stock_location_item_request: OpenapiClient::CreateStockLocationItemRequest.new # CreateStockLocationItemRequest | 
}

begin
  # Create stock location item
  result = api_instance.create_stock_location_item(stock_location_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->create_stock_location_item: #{e}"
end
```

#### Using the create_stock_location_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockItem>, Integer, Hash)> create_stock_location_item_with_http_info(stock_location_id, opts)

```ruby
begin
  # Create stock location item
  data, status_code, headers = api_instance.create_stock_location_item_with_http_info(stock_location_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->create_stock_location_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_location_id** | **String** |  |  |
| **create_stock_location_item_request** | [**CreateStockLocationItemRequest**](CreateStockLocationItemRequest.md) |  | [optional] |

### Return type

[**StockItem**](StockItem.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_stock_item

> <StockItem> delete_stock_item(id)

Delete stock item

Deletes a stock item.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockItemsApi.new
id = 'id_example' # String | The ID of the Stock::Item

begin
  # Delete stock item
  result = api_instance.delete_stock_item(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->delete_stock_item: #{e}"
end
```

#### Using the delete_stock_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockItem>, Integer, Hash)> delete_stock_item_with_http_info(id)

```ruby
begin
  # Delete stock item
  data, status_code, headers = api_instance.delete_stock_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->delete_stock_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Stock::Item |  |

### Return type

[**StockItem**](StockItem.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_stock_location_item

> <StockItem> delete_stock_location_item(stock_location_id, id)

Delete stock location item

Deletes a stock location's item.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockItemsApi.new
stock_location_id = 'stock_location_id_example' # String | The ID of the Spree::StockLocation
id = 'id_example' # String | The ID of the Spree::StockItem

begin
  # Delete stock location item
  result = api_instance.delete_stock_location_item(stock_location_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->delete_stock_location_item: #{e}"
end
```

#### Using the delete_stock_location_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockItem>, Integer, Hash)> delete_stock_location_item_with_http_info(stock_location_id, id)

```ruby
begin
  # Delete stock location item
  data, status_code, headers = api_instance.delete_stock_location_item_with_http_info(stock_location_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->delete_stock_location_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_location_id** | **String** | The ID of the Spree::StockLocation |  |
| **id** | **String** | The ID of the Spree::StockItem |  |

### Return type

[**StockItem**](StockItem.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_location_item

> Object get_stock_location_item(stock_location_id, id)

Get stock location item

Retrieves a stock location's item.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockItemsApi.new
stock_location_id = 'stock_location_id_example' # String | The ID of the Spree::StockLocation
id = 'id_example' # String | The ID of the Spree::StockItem

begin
  # Get stock location item
  result = api_instance.get_stock_location_item(stock_location_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->get_stock_location_item: #{e}"
end
```

#### Using the get_stock_location_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_stock_location_item_with_http_info(stock_location_id, id)

```ruby
begin
  # Get stock location item
  data, status_code, headers = api_instance.get_stock_location_item_with_http_info(stock_location_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->get_stock_location_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_location_id** | **String** | The ID of the Spree::StockLocation |  |
| **id** | **String** | The ID of the Spree::StockItem |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_stock_location_items

> <ListStockLocationItems200Response> list_stock_location_items(stock_location_id, opts)

List stock location items

Lists a stock location's items.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockItemsApi.new
stock_location_id = 'stock_location_id_example' # String | 
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List stock location items
  result = api_instance.list_stock_location_items(stock_location_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->list_stock_location_items: #{e}"
end
```

#### Using the list_stock_location_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStockLocationItems200Response>, Integer, Hash)> list_stock_location_items_with_http_info(stock_location_id, opts)

```ruby
begin
  # List stock location items
  data, status_code, headers = api_instance.list_stock_location_items_with_http_info(stock_location_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStockLocationItems200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->list_stock_location_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_location_id** | **String** |  |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListStockLocationItems200Response**](ListStockLocationItems200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_stock_item

> <StockItem> update_stock_item(id, opts)

Update stock item

Updates a stock item.  Only users with the `update` permission on the stock item can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockItemsApi.new
id = 'id_example' # String | The ID of the Stock::Item
opts = {
  create_stock_location_item_request: OpenapiClient::CreateStockLocationItemRequest.new # CreateStockLocationItemRequest | 
}

begin
  # Update stock item
  result = api_instance.update_stock_item(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->update_stock_item: #{e}"
end
```

#### Using the update_stock_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockItem>, Integer, Hash)> update_stock_item_with_http_info(id, opts)

```ruby
begin
  # Update stock item
  data, status_code, headers = api_instance.update_stock_item_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->update_stock_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Stock::Item |  |
| **create_stock_location_item_request** | [**CreateStockLocationItemRequest**](CreateStockLocationItemRequest.md) |  | [optional] |

### Return type

[**StockItem**](StockItem.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_stock_location_item

> <StockItem> update_stock_location_item(stock_location_id, id, opts)

Update stock location item

Updates a stock location's item.  Only users with the `update` permission on the stock item can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockItemsApi.new
stock_location_id = 'stock_location_id_example' # String | The ID of the Spree::StockLocation
id = 'id_example' # String | The ID of the Spree::StockItem
opts = {
  create_stock_location_item_request: OpenapiClient::CreateStockLocationItemRequest.new # CreateStockLocationItemRequest | 
}

begin
  # Update stock location item
  result = api_instance.update_stock_location_item(stock_location_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->update_stock_location_item: #{e}"
end
```

#### Using the update_stock_location_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockItem>, Integer, Hash)> update_stock_location_item_with_http_info(stock_location_id, id, opts)

```ruby
begin
  # Update stock location item
  data, status_code, headers = api_instance.update_stock_location_item_with_http_info(stock_location_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockItemsApi->update_stock_location_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_location_id** | **String** | The ID of the Spree::StockLocation |  |
| **id** | **String** | The ID of the Spree::StockItem |  |
| **create_stock_location_item_request** | [**CreateStockLocationItemRequest**](CreateStockLocationItemRequest.md) |  | [optional] |

### Return type

[**StockItem**](StockItem.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

