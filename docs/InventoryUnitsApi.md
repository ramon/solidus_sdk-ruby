# OpenapiClient::InventoryUnitsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_inventory_unit**](InventoryUnitsApi.md#get_inventory_unit) | **GET** /inventory_units/{id} | Get inventory unit |
| [**update_inventory_unit**](InventoryUnitsApi.md#update_inventory_unit) | **PATCH** /inventory_units/{id} | Update inventory unit |


## get_inventory_unit

> Object get_inventory_unit(id)

Get inventory unit

Retrieves an inventory unit.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InventoryUnitsApi.new
id = 'id_example' # String | 

begin
  # Get inventory unit
  result = api_instance.get_inventory_unit(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryUnitsApi->get_inventory_unit: #{e}"
end
```

#### Using the get_inventory_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_inventory_unit_with_http_info(id)

```ruby
begin
  # Get inventory unit
  data, status_code, headers = api_instance.get_inventory_unit_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryUnitsApi->get_inventory_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_inventory_unit

> <InventoryUnit> update_inventory_unit(id, opts)

Update inventory unit

Updates an inventory unit.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InventoryUnitsApi.new
id = 'id_example' # String | 
opts = {
  inventory_unit_input: OpenapiClient::InventoryUnitInput.new # InventoryUnitInput | 
}

begin
  # Update inventory unit
  result = api_instance.update_inventory_unit(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryUnitsApi->update_inventory_unit: #{e}"
end
```

#### Using the update_inventory_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InventoryUnit>, Integer, Hash)> update_inventory_unit_with_http_info(id, opts)

```ruby
begin
  # Update inventory unit
  data, status_code, headers = api_instance.update_inventory_unit_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InventoryUnit>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryUnitsApi->update_inventory_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **inventory_unit_input** | [**InventoryUnitInput**](InventoryUnitInput.md) |  | [optional] |

### Return type

[**InventoryUnit**](InventoryUnit.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

