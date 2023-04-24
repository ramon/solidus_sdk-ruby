# OpenapiClient::VariantsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product_variant**](VariantsApi.md#create_product_variant) | **POST** /products/{product_id}/variants | Create product variant |
| [**delete_variant**](VariantsApi.md#delete_variant) | **DELETE** /variants/{id} | Delete variant |
| [**get_variant**](VariantsApi.md#get_variant) | **GET** /variants/{id} | Get variant |
| [**list_product_variants**](VariantsApi.md#list_product_variants) | **GET** /products/{product_id}/variants | List product variants |
| [**list_variants**](VariantsApi.md#list_variants) | **GET** /variants | List variants |
| [**update_variant**](VariantsApi.md#update_variant) | **PATCH** /variants/{id} | Update variant |


## create_product_variant

> <Variant> create_product_variant(product_id, opts)

Create product variant

Creates a variant for a product.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::VariantsApi.new
product_id = 'product_id_example' # String | 
opts = {
  create_product_variant_request: OpenapiClient::CreateProductVariantRequest.new # CreateProductVariantRequest | 
}

begin
  # Create product variant
  result = api_instance.create_product_variant(product_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->create_product_variant: #{e}"
end
```

#### Using the create_product_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Variant>, Integer, Hash)> create_product_variant_with_http_info(product_id, opts)

```ruby
begin
  # Create product variant
  data, status_code, headers = api_instance.create_product_variant_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Variant>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->create_product_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **create_product_variant_request** | [**CreateProductVariantRequest**](CreateProductVariantRequest.md) |  | [optional] |

### Return type

[**Variant**](Variant.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_variant

> <Variant> delete_variant(id)

Delete variant

Deletes a variant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::VariantsApi.new
id = 'id_example' # String | 

begin
  # Delete variant
  result = api_instance.delete_variant(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->delete_variant: #{e}"
end
```

#### Using the delete_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Variant>, Integer, Hash)> delete_variant_with_http_info(id)

```ruby
begin
  # Delete variant
  data, status_code, headers = api_instance.delete_variant_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Variant>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->delete_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Variant**](Variant.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_variant

> <Variant> get_variant(id)

Get variant

Retrieves a variant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::VariantsApi.new
id = 'id_example' # String | 

begin
  # Get variant
  result = api_instance.get_variant(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->get_variant: #{e}"
end
```

#### Using the get_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Variant>, Integer, Hash)> get_variant_with_http_info(id)

```ruby
begin
  # Get variant
  data, status_code, headers = api_instance.get_variant_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Variant>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->get_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Variant**](Variant.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_variants

> <ListProductVariants200Response> list_product_variants(product_id, opts)

List product variants

Retrieves a product's variants.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::VariantsApi.new
product_id = 'product_id_example' # String | 
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List product variants
  result = api_instance.list_product_variants(product_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->list_product_variants: #{e}"
end
```

#### Using the list_product_variants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductVariants200Response>, Integer, Hash)> list_product_variants_with_http_info(product_id, opts)

```ruby
begin
  # List product variants
  data, status_code, headers = api_instance.list_product_variants_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductVariants200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->list_product_variants_with_http_info: #{e}"
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

[**ListProductVariants200Response**](ListProductVariants200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_variants

> <ListVariants200Response> list_variants(opts)

List variants

List variants.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::VariantsApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List variants
  result = api_instance.list_variants(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->list_variants: #{e}"
end
```

#### Using the list_variants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVariants200Response>, Integer, Hash)> list_variants_with_http_info(opts)

```ruby
begin
  # List variants
  data, status_code, headers = api_instance.list_variants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVariants200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->list_variants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListVariants200Response**](ListVariants200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_variant

> <Variant> update_variant(id, opts)

Update variant

Updates a variant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::VariantsApi.new
id = 'id_example' # String | 
opts = {
  create_product_variant_request: OpenapiClient::CreateProductVariantRequest.new # CreateProductVariantRequest | 
}

begin
  # Update variant
  result = api_instance.update_variant(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->update_variant: #{e}"
end
```

#### Using the update_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Variant>, Integer, Hash)> update_variant_with_http_info(id, opts)

```ruby
begin
  # Update variant
  data, status_code, headers = api_instance.update_variant_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Variant>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VariantsApi->update_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_product_variant_request** | [**CreateProductVariantRequest**](CreateProductVariantRequest.md) |  | [optional] |

### Return type

[**Variant**](Variant.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

