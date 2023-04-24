# OpenapiClient::PromotionsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_promotion**](PromotionsApi.md#get_promotion) | **GET** /promotions/{id} | Get promotion |


## get_promotion

> <Promotion> get_promotion(id)

Get promotion

Retrieves a promotion.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PromotionsApi.new
id = 'id_example' # String | 

begin
  # Get promotion
  result = api_instance.get_promotion(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion: #{e}"
end
```

#### Using the get_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Promotion>, Integer, Hash)> get_promotion_with_http_info(id)

```ruby
begin
  # Get promotion
  data, status_code, headers = api_instance.get_promotion_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Promotion>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Promotion**](Promotion.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

