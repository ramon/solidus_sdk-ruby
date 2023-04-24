# OpenapiClient::StockLocationsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_stock_location**](StockLocationsApi.md#create_stock_location) | **POST** /stock_locations | Create stock location |
| [**delete_stock_location**](StockLocationsApi.md#delete_stock_location) | **DELETE** /stock_locations/{id} | Delete stock location |
| [**get_stock_location**](StockLocationsApi.md#get_stock_location) | **GET** /stock_locations/{id} | Get stock location |
| [**list_stock_locations**](StockLocationsApi.md#list_stock_locations) | **GET** /stock_locations | List stock location |
| [**update_stock_location**](StockLocationsApi.md#update_stock_location) | **PATCH** /stock_locations/{id} | Update stock location |


## create_stock_location

> <StockLocation> create_stock_location(opts)

Create stock location

Creates a stock location.  Only users with the `create` permission on `Spree::StockLocation` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockLocationsApi.new
opts = {
  create_stock_location_request: OpenapiClient::CreateStockLocationRequest.new # CreateStockLocationRequest | 
}

begin
  # Create stock location
  result = api_instance.create_stock_location(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->create_stock_location: #{e}"
end
```

#### Using the create_stock_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockLocation>, Integer, Hash)> create_stock_location_with_http_info(opts)

```ruby
begin
  # Create stock location
  data, status_code, headers = api_instance.create_stock_location_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockLocation>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->create_stock_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_stock_location_request** | [**CreateStockLocationRequest**](CreateStockLocationRequest.md) |  | [optional] |

### Return type

[**StockLocation**](StockLocation.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_stock_location

> <StockLocation> delete_stock_location(id)

Delete stock location

Deletes a stock location.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockLocationsApi.new
id = 'id_example' # String | The id of the stock location

begin
  # Delete stock location
  result = api_instance.delete_stock_location(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->delete_stock_location: #{e}"
end
```

#### Using the delete_stock_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockLocation>, Integer, Hash)> delete_stock_location_with_http_info(id)

```ruby
begin
  # Delete stock location
  data, status_code, headers = api_instance.delete_stock_location_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockLocation>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->delete_stock_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the stock location |  |

### Return type

[**StockLocation**](StockLocation.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_location

> Object get_stock_location(id)

Get stock location

Get a stock location.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockLocationsApi.new
id = 'id_example' # String | The id of the stock location

begin
  # Get stock location
  result = api_instance.get_stock_location(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->get_stock_location: #{e}"
end
```

#### Using the get_stock_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_stock_location_with_http_info(id)

```ruby
begin
  # Get stock location
  data, status_code, headers = api_instance.get_stock_location_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->get_stock_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the stock location |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_stock_locations

> <ListStockLocations200Response> list_stock_locations(opts)

List stock location

Lists the stock locations.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockLocationsApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List stock location
  result = api_instance.list_stock_locations(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->list_stock_locations: #{e}"
end
```

#### Using the list_stock_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStockLocations200Response>, Integer, Hash)> list_stock_locations_with_http_info(opts)

```ruby
begin
  # List stock location
  data, status_code, headers = api_instance.list_stock_locations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStockLocations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->list_stock_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListStockLocations200Response**](ListStockLocations200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_stock_location

> <StockLocation> update_stock_location(id, opts)

Update stock location

Updates a stock location.  Only users with the `update` permission on the stock location can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StockLocationsApi.new
id = 'id_example' # String | The id of the stock location
opts = {
  create_stock_location_request: OpenapiClient::CreateStockLocationRequest.new # CreateStockLocationRequest | 
}

begin
  # Update stock location
  result = api_instance.update_stock_location(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->update_stock_location: #{e}"
end
```

#### Using the update_stock_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockLocation>, Integer, Hash)> update_stock_location_with_http_info(id, opts)

```ruby
begin
  # Update stock location
  data, status_code, headers = api_instance.update_stock_location_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockLocation>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StockLocationsApi->update_stock_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the stock location |  |
| **create_stock_location_request** | [**CreateStockLocationRequest**](CreateStockLocationRequest.md) |  | [optional] |

### Return type

[**StockLocation**](StockLocation.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

