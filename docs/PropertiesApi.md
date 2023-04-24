# OpenapiClient::PropertiesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_property**](PropertiesApi.md#create_property) | **POST** /properties | Create property |
| [**delete_property**](PropertiesApi.md#delete_property) | **DELETE** /properties/{id} | Delete property |
| [**get_property**](PropertiesApi.md#get_property) | **GET** /properties/{id} | Get property |
| [**list_properties**](PropertiesApi.md#list_properties) | **GET** /properties | List properties |
| [**update_property**](PropertiesApi.md#update_property) | **PATCH** /properties/{id} | Update property |


## create_property

> <Property> create_property(opts)

Create property

Creates a property.  Only users with the `create` permission on `Spree::Propery` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PropertiesApi.new
opts = {
  create_property_request: OpenapiClient::CreatePropertyRequest.new # CreatePropertyRequest | 
}

begin
  # Create property
  result = api_instance.create_property(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->create_property: #{e}"
end
```

#### Using the create_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Property>, Integer, Hash)> create_property_with_http_info(opts)

```ruby
begin
  # Create property
  data, status_code, headers = api_instance.create_property_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Property>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->create_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_property_request** | [**CreatePropertyRequest**](CreatePropertyRequest.md) |  | [optional] |

### Return type

[**Property**](Property.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_property

> <Property> delete_property(id)

Delete property

Deletes a property.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PropertiesApi.new
id = 'id_example' # String | The id of the Spree::Property

begin
  # Delete property
  result = api_instance.delete_property(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->delete_property: #{e}"
end
```

#### Using the delete_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Property>, Integer, Hash)> delete_property_with_http_info(id)

```ruby
begin
  # Delete property
  data, status_code, headers = api_instance.delete_property_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Property>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->delete_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the Spree::Property |  |

### Return type

[**Property**](Property.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property

> <Property> get_property(id)

Get property

Retrieves a property.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PropertiesApi.new
id = 'id_example' # String | The id of the Spree::Property

begin
  # Get property
  result = api_instance.get_property(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->get_property: #{e}"
end
```

#### Using the get_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Property>, Integer, Hash)> get_property_with_http_info(id)

```ruby
begin
  # Get property
  data, status_code, headers = api_instance.get_property_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Property>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->get_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the Spree::Property |  |

### Return type

[**Property**](Property.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_properties

> <ListProperties200Response> list_properties(opts)

List properties

Lists the defined properties.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PropertiesApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List properties
  result = api_instance.list_properties(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->list_properties: #{e}"
end
```

#### Using the list_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProperties200Response>, Integer, Hash)> list_properties_with_http_info(opts)

```ruby
begin
  # List properties
  data, status_code, headers = api_instance.list_properties_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProperties200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->list_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListProperties200Response**](ListProperties200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_property

> <Property> update_property(id, opts)

Update property

Updates a property.  Only users with the `update` permission on the property can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PropertiesApi.new
id = 'id_example' # String | The id of the Spree::Property
opts = {
  create_property_request: OpenapiClient::CreatePropertyRequest.new # CreatePropertyRequest | 
}

begin
  # Update property
  result = api_instance.update_property(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->update_property: #{e}"
end
```

#### Using the update_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Property>, Integer, Hash)> update_property_with_http_info(id, opts)

```ruby
begin
  # Update property
  data, status_code, headers = api_instance.update_property_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Property>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PropertiesApi->update_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the Spree::Property |  |
| **create_property_request** | [**CreatePropertyRequest**](CreatePropertyRequest.md) |  | [optional] |

### Return type

[**Property**](Property.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

