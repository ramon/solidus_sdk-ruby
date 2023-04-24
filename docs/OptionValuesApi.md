# OpenapiClient::OptionValuesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_option_type_value**](OptionValuesApi.md#create_option_type_value) | **POST** /option_types/{option_type_id}/option_values | Create option type value |
| [**delete_option_value**](OptionValuesApi.md#delete_option_value) | **DELETE** /option_values/{id} | Delete option value |
| [**get_option_value**](OptionValuesApi.md#get_option_value) | **GET** /option_values/{id} | Get option value |
| [**list_option_type_values**](OptionValuesApi.md#list_option_type_values) | **GET** /option_types/{option_type_id}/option_values | List option type values |
| [**list_option_values**](OptionValuesApi.md#list_option_values) | **GET** /option_values | List option values |
| [**update_option_value**](OptionValuesApi.md#update_option_value) | **PATCH** /option_values/{id} | Update option value |


## create_option_type_value

> <OptionValue> create_option_type_value(option_type_id, opts)

Create option type value

Creates an option value for a type.  Only users with the `create` permission on `Spree::OptionValue` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionValuesApi.new
option_type_id = 'option_type_id_example' # String | The ID of the Spree::OptionType
opts = {
  update_option_value_request: OpenapiClient::UpdateOptionValueRequest.new # UpdateOptionValueRequest | 
}

begin
  # Create option type value
  result = api_instance.create_option_type_value(option_type_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->create_option_type_value: #{e}"
end
```

#### Using the create_option_type_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionValue>, Integer, Hash)> create_option_type_value_with_http_info(option_type_id, opts)

```ruby
begin
  # Create option type value
  data, status_code, headers = api_instance.create_option_type_value_with_http_info(option_type_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionValue>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->create_option_type_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **option_type_id** | **String** | The ID of the Spree::OptionType |  |
| **update_option_value_request** | [**UpdateOptionValueRequest**](UpdateOptionValueRequest.md) |  | [optional] |

### Return type

[**OptionValue**](OptionValue.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_option_value

> <OptionValue> delete_option_value(id)

Delete option value

Deletes an option value.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionValuesApi.new
id = 'id_example' # String | The ID of the Spree::OptionValue

begin
  # Delete option value
  result = api_instance.delete_option_value(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->delete_option_value: #{e}"
end
```

#### Using the delete_option_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionValue>, Integer, Hash)> delete_option_value_with_http_info(id)

```ruby
begin
  # Delete option value
  data, status_code, headers = api_instance.delete_option_value_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionValue>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->delete_option_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Spree::OptionValue |  |

### Return type

[**OptionValue**](OptionValue.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_option_value

> <OptionValue> get_option_value(id)

Get option value

Retrieves an option value.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionValuesApi.new
id = 'id_example' # String | The ID of the Spree::OptionValue

begin
  # Get option value
  result = api_instance.get_option_value(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->get_option_value: #{e}"
end
```

#### Using the get_option_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionValue>, Integer, Hash)> get_option_value_with_http_info(id)

```ruby
begin
  # Get option value
  data, status_code, headers = api_instance.get_option_value_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionValue>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->get_option_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Spree::OptionValue |  |

### Return type

[**OptionValue**](OptionValue.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_option_type_values

> <Array<OptionValue>> list_option_type_values(option_type_id)

List option type values

Retrieves an option type's option values.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionValuesApi.new
option_type_id = 'option_type_id_example' # String | The ID of the Spree::OptionType

begin
  # List option type values
  result = api_instance.list_option_type_values(option_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->list_option_type_values: #{e}"
end
```

#### Using the list_option_type_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OptionValue>>, Integer, Hash)> list_option_type_values_with_http_info(option_type_id)

```ruby
begin
  # List option type values
  data, status_code, headers = api_instance.list_option_type_values_with_http_info(option_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OptionValue>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->list_option_type_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **option_type_id** | **String** | The ID of the Spree::OptionType |  |

### Return type

[**Array&lt;OptionValue&gt;**](OptionValue.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_option_values

> <Array<OptionValue>> list_option_values

List option values

Lists the system's option values.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionValuesApi.new

begin
  # List option values
  result = api_instance.list_option_values
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->list_option_values: #{e}"
end
```

#### Using the list_option_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OptionValue>>, Integer, Hash)> list_option_values_with_http_info

```ruby
begin
  # List option values
  data, status_code, headers = api_instance.list_option_values_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OptionValue>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->list_option_values_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;OptionValue&gt;**](OptionValue.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_option_value

> <OptionValue> update_option_value(id, opts)

Update option value

Updates an option value.  Only users with the `update` permission on the option value can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OptionValuesApi.new
id = 'id_example' # String | The ID of the Spree::OptionValue
opts = {
  update_option_value_request: OpenapiClient::UpdateOptionValueRequest.new # UpdateOptionValueRequest | 
}

begin
  # Update option value
  result = api_instance.update_option_value(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->update_option_value: #{e}"
end
```

#### Using the update_option_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionValue>, Integer, Hash)> update_option_value_with_http_info(id, opts)

```ruby
begin
  # Update option value
  data, status_code, headers = api_instance.update_option_value_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionValue>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionValuesApi->update_option_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Spree::OptionValue |  |
| **update_option_value_request** | [**UpdateOptionValueRequest**](UpdateOptionValueRequest.md) |  | [optional] |

### Return type

[**OptionValue**](OptionValue.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

