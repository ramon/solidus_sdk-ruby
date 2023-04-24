# OpenapiClient::StoresApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_store**](StoresApi.md#create_store) | **POST** /stores | Create store |
| [**delete_store**](StoresApi.md#delete_store) | **DELETE** /stores/{id} | Delete store |
| [**get_store**](StoresApi.md#get_store) | **GET** /stores/{id} | Get store |
| [**list_stores**](StoresApi.md#list_stores) | **GET** /stores | List stores |
| [**update_store**](StoresApi.md#update_store) | **PATCH** /stores/{id} | Update store |


## create_store

> <Store> create_store(opts)

Create store

Creates a store.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StoresApi.new
opts = {
  create_store_request: OpenapiClient::CreateStoreRequest.new # CreateStoreRequest | 
}

begin
  # Create store
  result = api_instance.create_store(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->create_store: #{e}"
end
```

#### Using the create_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Store>, Integer, Hash)> create_store_with_http_info(opts)

```ruby
begin
  # Create store
  data, status_code, headers = api_instance.create_store_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Store>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->create_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_store_request** | [**CreateStoreRequest**](CreateStoreRequest.md) |  | [optional] |

### Return type

[**Store**](Store.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_store

> <Store> delete_store(id)

Delete store

Deletes a store.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StoresApi.new
id = 'id_example' # String | 

begin
  # Delete store
  result = api_instance.delete_store(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->delete_store: #{e}"
end
```

#### Using the delete_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Store>, Integer, Hash)> delete_store_with_http_info(id)

```ruby
begin
  # Delete store
  data, status_code, headers = api_instance.delete_store_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Store>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->delete_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Store**](Store.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_store

> Object get_store(id)

Get store

Retrieves a store.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StoresApi.new
id = 'id_example' # String | 

begin
  # Get store
  result = api_instance.get_store(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->get_store: #{e}"
end
```

#### Using the get_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_store_with_http_info(id)

```ruby
begin
  # Get store
  data, status_code, headers = api_instance.get_store_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->get_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_stores

> <ListStores200Response> list_stores(opts)

List stores

Lists all stores in the system.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StoresApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56 # Integer | 
}

begin
  # List stores
  result = api_instance.list_stores(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->list_stores: #{e}"
end
```

#### Using the list_stores_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStores200Response>, Integer, Hash)> list_stores_with_http_info(opts)

```ruby
begin
  # List stores
  data, status_code, headers = api_instance.list_stores_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStores200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->list_stores_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |

### Return type

[**ListStores200Response**](ListStores200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_store

> <Store> update_store(id, opts)

Update store

Updates a store.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::StoresApi.new
id = 'id_example' # String | 
opts = {
  store_input: OpenapiClient::StoreInput.new # StoreInput | 
}

begin
  # Update store
  result = api_instance.update_store(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->update_store: #{e}"
end
```

#### Using the update_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Store>, Integer, Hash)> update_store_with_http_info(id, opts)

```ruby
begin
  # Update store
  data, status_code, headers = api_instance.update_store_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Store>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StoresApi->update_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **store_input** | [**StoreInput**](StoreInput.md) |  | [optional] |

### Return type

[**Store**](Store.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

