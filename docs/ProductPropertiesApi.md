# OpenapiClient::ProductPropertiesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product_property**](ProductPropertiesApi.md#create_product_property) | **POST** /products/{product_id}/product_properties | Create product property |
| [**delete_product_property**](ProductPropertiesApi.md#delete_product_property) | **DELETE** /products/{product_id}/product_properties/{id} | Delete product property |
| [**get_product_property**](ProductPropertiesApi.md#get_product_property) | **GET** /products/{product_id}/product_properties/{id} | Get product property |
| [**list_product_properties**](ProductPropertiesApi.md#list_product_properties) | **GET** /products/{product_id}/product_properties | List product properties |
| [**update_product_property**](ProductPropertiesApi.md#update_product_property) | **PATCH** /products/{product_id}/product_properties/{id} | Update product property |


## create_product_property

> <ProductProperty> create_product_property(product_id, opts)

Create product property

Creates a product property.  Only users with the `create` permission on `Spree::ProductProperty` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductPropertiesApi.new
product_id = 'product_id_example' # String | 
opts = {
  create_product_property_request: OpenapiClient::CreateProductPropertyRequest.new # CreateProductPropertyRequest | 
}

begin
  # Create product property
  result = api_instance.create_product_property(product_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->create_product_property: #{e}"
end
```

#### Using the create_product_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductProperty>, Integer, Hash)> create_product_property_with_http_info(product_id, opts)

```ruby
begin
  # Create product property
  data, status_code, headers = api_instance.create_product_property_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductProperty>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->create_product_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **create_product_property_request** | [**CreateProductPropertyRequest**](CreateProductPropertyRequest.md) |  | [optional] |

### Return type

[**ProductProperty**](ProductProperty.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product_property

> <ProductProperty> delete_product_property(product_id, id)

Delete product property

Deletes a product's property.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductPropertiesApi.new
product_id = 'product_id_example' # String | 
id = 'id_example' # String | 

begin
  # Delete product property
  result = api_instance.delete_product_property(product_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->delete_product_property: #{e}"
end
```

#### Using the delete_product_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductProperty>, Integer, Hash)> delete_product_property_with_http_info(product_id, id)

```ruby
begin
  # Delete product property
  data, status_code, headers = api_instance.delete_product_property_with_http_info(product_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductProperty>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->delete_product_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**ProductProperty**](ProductProperty.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_property

> <ProductProperty> get_product_property(product_id, id)

Get product property

Retrieves a product's property.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductPropertiesApi.new
product_id = 'product_id_example' # String | 
id = 'id_example' # String | 

begin
  # Get product property
  result = api_instance.get_product_property(product_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->get_product_property: #{e}"
end
```

#### Using the get_product_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductProperty>, Integer, Hash)> get_product_property_with_http_info(product_id, id)

```ruby
begin
  # Get product property
  data, status_code, headers = api_instance.get_product_property_with_http_info(product_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductProperty>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->get_product_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**ProductProperty**](ProductProperty.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_properties

> <ListProductProperties200Response> list_product_properties(product_id, opts)

List product properties

Lists a product's properties.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductPropertiesApi.new
product_id = 'product_id_example' # String | 
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List product properties
  result = api_instance.list_product_properties(product_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->list_product_properties: #{e}"
end
```

#### Using the list_product_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductProperties200Response>, Integer, Hash)> list_product_properties_with_http_info(product_id, opts)

```ruby
begin
  # List product properties
  data, status_code, headers = api_instance.list_product_properties_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductProperties200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->list_product_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListProductProperties200Response**](ListProductProperties200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product_property

> <ProductProperty> update_product_property(product_id, id, opts)

Update product property

Updates a product's property.  Only users with the `update` permission on the product property can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductPropertiesApi.new
product_id = 'product_id_example' # String | 
id = 'id_example' # String | 
opts = {
  create_product_property_request: OpenapiClient::CreateProductPropertyRequest.new # CreateProductPropertyRequest | 
}

begin
  # Update product property
  result = api_instance.update_product_property(product_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->update_product_property: #{e}"
end
```

#### Using the update_product_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductProperty>, Integer, Hash)> update_product_property_with_http_info(product_id, id, opts)

```ruby
begin
  # Update product property
  data, status_code, headers = api_instance.update_product_property_with_http_info(product_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductProperty>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductPropertiesApi->update_product_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **id** | **String** |  |  |
| **create_product_property_request** | [**CreateProductPropertyRequest**](CreateProductPropertyRequest.md) |  | [optional] |

### Return type

[**ProductProperty**](ProductProperty.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

