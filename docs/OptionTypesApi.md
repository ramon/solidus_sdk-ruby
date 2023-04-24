# OpenapiClient::OptionTypesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_option_type**](OptionTypesApi.md#create_option_type) | **POST** /option_types | Create option type |
| [**delete_option_type**](OptionTypesApi.md#delete_option_type) | **POST** /option_types/{id} | Delete option type |
| [**get_option_type**](OptionTypesApi.md#get_option_type) | **GET** /option_types/{id} | Get option type |
| [**list_option_types**](OptionTypesApi.md#list_option_types) | **GET** /option_types | List option types |
| [**update_option_type**](OptionTypesApi.md#update_option_type) | **PATCH** /option_types/{id} | Update option type |


## create_option_type

> <OptionType> create_option_type(opts)

Create option type

Creates an option type.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionTypesApi.new
opts = {
  option_type_input: OpenapiClient::OptionTypeInput.new # OptionTypeInput | 
}

begin
  # Create option type
  result = api_instance.create_option_type(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->create_option_type: #{e}"
end
```

#### Using the create_option_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionType>, Integer, Hash)> create_option_type_with_http_info(opts)

```ruby
begin
  # Create option type
  data, status_code, headers = api_instance.create_option_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionType>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->create_option_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **option_type_input** | [**OptionTypeInput**](OptionTypeInput.md) |  | [optional] |

### Return type

[**OptionType**](OptionType.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_option_type

> <OptionType> delete_option_type(id)

Delete option type

Deletes an option type.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionTypesApi.new
id = 'id_example' # String | 

begin
  # Delete option type
  result = api_instance.delete_option_type(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->delete_option_type: #{e}"
end
```

#### Using the delete_option_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionType>, Integer, Hash)> delete_option_type_with_http_info(id)

```ruby
begin
  # Delete option type
  data, status_code, headers = api_instance.delete_option_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionType>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->delete_option_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**OptionType**](OptionType.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_option_type

> <OptionType> get_option_type(id)

Get option type

Retrieve an option type.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionTypesApi.new
id = 'id_example' # String | 

begin
  # Get option type
  result = api_instance.get_option_type(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->get_option_type: #{e}"
end
```

#### Using the get_option_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionType>, Integer, Hash)> get_option_type_with_http_info(id)

```ruby
begin
  # Get option type
  data, status_code, headers = api_instance.get_option_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionType>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->get_option_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**OptionType**](OptionType.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_option_types

> <Array<OptionType>> list_option_types

List option types

Lists the system's option types.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionTypesApi.new

begin
  # List option types
  result = api_instance.list_option_types
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->list_option_types: #{e}"
end
```

#### Using the list_option_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OptionType>>, Integer, Hash)> list_option_types_with_http_info

```ruby
begin
  # List option types
  data, status_code, headers = api_instance.list_option_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OptionType>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->list_option_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;OptionType&gt;**](OptionType.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_option_type

> <OptionType> update_option_type(id, opts)

Update option type

Updates an option type.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionTypesApi.new
id = 'id_example' # String | 
opts = {
  option_type: OpenapiClient::OptionType.new # OptionType | 
}

begin
  # Update option type
  result = api_instance.update_option_type(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->update_option_type: #{e}"
end
```

#### Using the update_option_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionType>, Integer, Hash)> update_option_type_with_http_info(id, opts)

```ruby
begin
  # Update option type
  data, status_code, headers = api_instance.update_option_type_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionType>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionTypesApi->update_option_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **option_type** | [**OptionType**](OptionType.md) |  | [optional] |

### Return type

[**OptionType**](OptionType.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

