# OpenapiClient::ConfigurationApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_config**](ConfigurationApi.md#get_config) | **GET** /config | Get system configuration |
| [**get_money_config**](ConfigurationApi.md#get_money_config) | **GET** /config/money | Get money configuration |


## get_config

> <GetConfig200Response> get_config

Get system configuration

Retrieves the system's configuration.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConfigurationApi.new

begin
  # Get system configuration
  result = api_instance.get_config
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConfigurationApi->get_config: #{e}"
end
```

#### Using the get_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConfig200Response>, Integer, Hash)> get_config_with_http_info

```ruby
begin
  # Get system configuration
  data, status_code, headers = api_instance.get_config_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConfig200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConfigurationApi->get_config_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetConfig200Response**](GetConfig200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_money_config

> <GetMoneyConfig200Response> get_money_config

Get money configuration

Gets the system's money configuration.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConfigurationApi.new

begin
  # Get money configuration
  result = api_instance.get_money_config
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConfigurationApi->get_money_config: #{e}"
end
```

#### Using the get_money_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMoneyConfig200Response>, Integer, Hash)> get_money_config_with_http_info

```ruby
begin
  # Get money configuration
  data, status_code, headers = api_instance.get_money_config_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMoneyConfig200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConfigurationApi->get_money_config_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetMoneyConfig200Response**](GetMoneyConfig200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

