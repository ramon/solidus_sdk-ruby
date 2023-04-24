# OpenapiClient::ZonesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_zone**](ZonesApi.md#create_zone) | **POST** /zones | Create zone |
| [**delete_zone**](ZonesApi.md#delete_zone) | **DELETE** /zones/{id} | Delete zone |
| [**get_zone**](ZonesApi.md#get_zone) | **GET** /zones/{id} | Get zone |
| [**list_zones**](ZonesApi.md#list_zones) | **GET** /zones | List zones |
| [**update_zone**](ZonesApi.md#update_zone) | **PATCH** /zones/{id} | Update zone |


## create_zone

> <Zone> create_zone(opts)

Create zone

Creates a zone.  Only users with the `create` permission on `Spree::Zone` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ZonesApi.new
opts = {
  create_zone_request: OpenapiClient::CreateZoneRequest.new # CreateZoneRequest | 
}

begin
  # Create zone
  result = api_instance.create_zone(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->create_zone: #{e}"
end
```

#### Using the create_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Zone>, Integer, Hash)> create_zone_with_http_info(opts)

```ruby
begin
  # Create zone
  data, status_code, headers = api_instance.create_zone_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Zone>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->create_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_zone_request** | [**CreateZoneRequest**](CreateZoneRequest.md) |  | [optional] |

### Return type

[**Zone**](Zone.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_zone

> <Zone> delete_zone(id)

Delete zone

Deletes a zone.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ZonesApi.new
id = 'id_example' # String | The ID of the zone we want to update

begin
  # Delete zone
  result = api_instance.delete_zone(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->delete_zone: #{e}"
end
```

#### Using the delete_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Zone>, Integer, Hash)> delete_zone_with_http_info(id)

```ruby
begin
  # Delete zone
  data, status_code, headers = api_instance.delete_zone_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Zone>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->delete_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the zone we want to update |  |

### Return type

[**Zone**](Zone.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_zone

> <Zone> get_zone(id)

Get zone

Retrieves a zone.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ZonesApi.new
id = 'id_example' # String | The ID of the zone we want to update

begin
  # Get zone
  result = api_instance.get_zone(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->get_zone: #{e}"
end
```

#### Using the get_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Zone>, Integer, Hash)> get_zone_with_http_info(id)

```ruby
begin
  # Get zone
  data, status_code, headers = api_instance.get_zone_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Zone>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->get_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the zone we want to update |  |

### Return type

[**Zone**](Zone.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_zones

> <ListZones200Response> list_zones(opts)

List zones

Lists all zones.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ZonesApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List zones
  result = api_instance.list_zones(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->list_zones: #{e}"
end
```

#### Using the list_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListZones200Response>, Integer, Hash)> list_zones_with_http_info(opts)

```ruby
begin
  # List zones
  data, status_code, headers = api_instance.list_zones_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListZones200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->list_zones_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListZones200Response**](ListZones200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_zone

> <Zone> update_zone(id, opts)

Update zone

Updates a zone.  Only users with the `update` permission on the zone can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ZonesApi.new
id = 'id_example' # String | The ID of the zone we want to update
opts = {
  create_zone_request: OpenapiClient::CreateZoneRequest.new # CreateZoneRequest | 
}

begin
  # Update zone
  result = api_instance.update_zone(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->update_zone: #{e}"
end
```

#### Using the update_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Zone>, Integer, Hash)> update_zone_with_http_info(id, opts)

```ruby
begin
  # Update zone
  data, status_code, headers = api_instance.update_zone_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Zone>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ZonesApi->update_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the zone we want to update |  |
| **create_zone_request** | [**CreateZoneRequest**](CreateZoneRequest.md) |  | [optional] |

### Return type

[**Zone**](Zone.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

