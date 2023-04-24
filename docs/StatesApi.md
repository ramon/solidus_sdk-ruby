# OpenapiClient::StatesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_country_state**](StatesApi.md#get_country_state) | **GET** /countries/{country_id}/states/{id} | Get country state |
| [**get_state**](StatesApi.md#get_state) | **GET** /states/{id} | Get state |
| [**list_country_states**](StatesApi.md#list_country_states) | **GET** /countries/{country_id}/states | List country states |
| [**list_states**](StatesApi.md#list_states) | **GET** /states | List states |


## get_country_state

> <State> get_country_state(country_id, id)

Get country state

Retrieves a country's state.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::StatesApi.new
country_id = 'country_id_example' # String | 
id = 'id_example' # String | 

begin
  # Get country state
  result = api_instance.get_country_state(country_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatesApi->get_country_state: #{e}"
end
```

#### Using the get_country_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<State>, Integer, Hash)> get_country_state_with_http_info(country_id, id)

```ruby
begin
  # Get country state
  data, status_code, headers = api_instance.get_country_state_with_http_info(country_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <State>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatesApi->get_country_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**State**](State.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_state

> <State> get_state(id)

Get state

Retrieves a state.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::StatesApi.new
id = 'id_example' # String | 

begin
  # Get state
  result = api_instance.get_state(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatesApi->get_state: #{e}"
end
```

#### Using the get_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<State>, Integer, Hash)> get_state_with_http_info(id)

```ruby
begin
  # Get state
  data, status_code, headers = api_instance.get_state_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <State>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatesApi->get_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**State**](State.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_country_states

> <ListCountryStates200Response> list_country_states(country_id)

List country states

Retrieves a country's states.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::StatesApi.new
country_id = 'country_id_example' # String | 

begin
  # List country states
  result = api_instance.list_country_states(country_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatesApi->list_country_states: #{e}"
end
```

#### Using the list_country_states_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCountryStates200Response>, Integer, Hash)> list_country_states_with_http_info(country_id)

```ruby
begin
  # List country states
  data, status_code, headers = api_instance.list_country_states_with_http_info(country_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCountryStates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatesApi->list_country_states_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_id** | **String** |  |  |

### Return type

[**ListCountryStates200Response**](ListCountryStates200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_states

> <ListStates200Response> list_states

List states

Lists all states in the system.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::StatesApi.new

begin
  # List states
  result = api_instance.list_states
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatesApi->list_states: #{e}"
end
```

#### Using the list_states_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStates200Response>, Integer, Hash)> list_states_with_http_info

```ruby
begin
  # List states
  data, status_code, headers = api_instance.list_states_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatesApi->list_states_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListStates200Response**](ListStates200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

