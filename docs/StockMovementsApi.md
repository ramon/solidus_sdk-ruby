# OpenapiClient::StockMovementsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_stock_location_movement**](StockMovementsApi.md#create_stock_location_movement) | **POST** /stock_locations/{stock_location_id}/stock_movements | Create stock location movement |
| [**get_stock_location_movement**](StockMovementsApi.md#get_stock_location_movement) | **GET** /stock_locations/{stock_location_id}/stock_movements/{id} | Get stock location movement |
| [**list_stock_location_movements**](StockMovementsApi.md#list_stock_location_movements) | **GET** /stock_locations/{stock_location_id}/stock_movements | List stock location movements |


## create_stock_location_movement

> <StockMovement> create_stock_location_movement(stock_location_id, opts)

Create stock location movement

Creates a stock movement for a stock location.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockMovementsApi.new
stock_location_id = 'stock_location_id_example' # String | 
opts = {
  stock_movement_input: OpenapiClient::StockMovementInput.new # StockMovementInput | 
}

begin
  # Create stock location movement
  result = api_instance.create_stock_location_movement(stock_location_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockMovementsApi->create_stock_location_movement: #{e}"
end
```

#### Using the create_stock_location_movement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockMovement>, Integer, Hash)> create_stock_location_movement_with_http_info(stock_location_id, opts)

```ruby
begin
  # Create stock location movement
  data, status_code, headers = api_instance.create_stock_location_movement_with_http_info(stock_location_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockMovement>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockMovementsApi->create_stock_location_movement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_location_id** | **String** |  |  |
| **stock_movement_input** | [**StockMovementInput**](StockMovementInput.md) |  | [optional] |

### Return type

[**StockMovement**](StockMovement.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_stock_location_movement

> Object get_stock_location_movement(stock_location_id, id)

Get stock location movement

Retrieves a stock location's movement.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockMovementsApi.new
stock_location_id = 'stock_location_id_example' # String | 
id = 'id_example' # String | 

begin
  # Get stock location movement
  result = api_instance.get_stock_location_movement(stock_location_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockMovementsApi->get_stock_location_movement: #{e}"
end
```

#### Using the get_stock_location_movement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_stock_location_movement_with_http_info(stock_location_id, id)

```ruby
begin
  # Get stock location movement
  data, status_code, headers = api_instance.get_stock_location_movement_with_http_info(stock_location_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockMovementsApi->get_stock_location_movement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stock_location_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_stock_location_movements

> <ListStockLocationMovements200Response> list_stock_location_movements(stock_location_id, opts)

List stock location movements

Lists a stock location's movements.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockMovementsApi.new
stock_location_id = 'stock_location_id_example' # String | 
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List stock location movements
  result = api_instance.list_stock_location_movements(stock_location_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockMovementsApi->list_stock_location_movements: #{e}"
end
```

#### Using the list_stock_location_movements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStockLocationMovements200Response>, Integer, Hash)> list_stock_location_movements_with_http_info(stock_location_id, opts)

```ruby
begin
  # List stock location movements
  data, status_code, headers = api_instance.list_stock_location_movements_with_http_info(stock_location_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStockLocationMovements200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockMovementsApi->list_stock_location_movements_with_http_info: #{e}"
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

[**ListStockLocationMovements200Response**](ListStockLocationMovements200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

