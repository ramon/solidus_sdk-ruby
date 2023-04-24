# OpenapiClient::ClassificationsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_classification**](ClassificationsApi.md#update_classification) | **PUT** /classifications | Update classification |


## update_classification

> Object update_classification(opts)

Update classification

Updates a classification.  This method only updates the classification position.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ClassificationsApi.new
opts = {
  update_classification_request: OpenapiClient::UpdateClassificationRequest.new # UpdateClassificationRequest | 
}

begin
  # Update classification
  result = api_instance.update_classification(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClassificationsApi->update_classification: #{e}"
end
```

#### Using the update_classification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_classification_with_http_info(opts)

```ruby
begin
  # Update classification
  data, status_code, headers = api_instance.update_classification_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ClassificationsApi->update_classification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_classification_request** | [**UpdateClassificationRequest**](UpdateClassificationRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

