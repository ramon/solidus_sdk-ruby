# OpenapiClient::StoreCreditEventsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_current_user_store_credit_events**](StoreCreditEventsApi.md#list_current_user_store_credit_events) | **GET** /store_credit_events/mine | List current user&#39;s store credit events |


## list_current_user_store_credit_events

> <ListCurrentUserStoreCreditEvents200Response> list_current_user_store_credit_events(opts)

List current user's store credit events

Lists the current user's store credit events.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StoreCreditEventsApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56 # Integer | 
}

begin
  # List current user's store credit events
  result = api_instance.list_current_user_store_credit_events(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoreCreditEventsApi->list_current_user_store_credit_events: #{e}"
end
```

#### Using the list_current_user_store_credit_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCurrentUserStoreCreditEvents200Response>, Integer, Hash)> list_current_user_store_credit_events_with_http_info(opts)

```ruby
begin
  # List current user's store credit events
  data, status_code, headers = api_instance.list_current_user_store_credit_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCurrentUserStoreCreditEvents200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoreCreditEventsApi->list_current_user_store_credit_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |

### Return type

[**ListCurrentUserStoreCreditEvents200Response**](ListCurrentUserStoreCreditEvents200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

