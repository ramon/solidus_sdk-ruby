# OpenapiClient::ProductsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product**](ProductsApi.md#create_product) | **POST** /products | Create product |
| [**delete_product**](ProductsApi.md#delete_product) | **DELETE** /products/{id} | Delete product |
| [**get_product**](ProductsApi.md#get_product) | **GET** /products/{id} | Get product |
| [**list_products**](ProductsApi.md#list_products) | **GET** /products | List products |
| [**list_taxon_products**](ProductsApi.md#list_taxon_products) | **GET** /taxons/products | List taxon products |
| [**update_product**](ProductsApi.md#update_product) | **PATCH** /products/{id} | Update product |


## create_product

> <Product> create_product(opts)

Create product

Creates a product.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductsApi.new
opts = {
  create_product_request: OpenapiClient::CreateProductRequest.new # CreateProductRequest | 
}

begin
  # Create product
  result = api_instance.create_product(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end
```

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> create_product_with_http_info(opts)

```ruby
begin
  # Create product
  data, status_code, headers = api_instance.create_product_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_product_request** | [**CreateProductRequest**](CreateProductRequest.md) |  | [optional] |

### Return type

[**Product**](Product.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product

> <Product> delete_product(id)

Delete product

Deletes a product.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductsApi.new
id = 'id_example' # String | 

begin
  # Delete product
  result = api_instance.delete_product(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end
```

#### Using the delete_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> delete_product_with_http_info(id)

```ruby
begin
  # Delete product
  data, status_code, headers = api_instance.delete_product_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->delete_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Product**](Product.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product

> <Product> get_product(id)

Get product

Retrieves a product.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductsApi.new
id = 'id_example' # String | 

begin
  # Get product
  result = api_instance.get_product(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->get_product: #{e}"
end
```

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> get_product_with_http_info(id)

```ruby
begin
  # Get product
  data, status_code, headers = api_instance.get_product_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Product**](Product.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_products

> <ListProducts200Response> list_products(opts)

List products

Returns a list of available products.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductsApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List products
  result = api_instance.list_products(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->list_products: #{e}"
end
```

#### Using the list_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProducts200Response>, Integer, Hash)> list_products_with_http_info(opts)

```ruby
begin
  # List products
  data, status_code, headers = api_instance.list_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProducts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->list_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListProducts200Response**](ListProducts200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_taxon_products

> <ListProducts200Response> list_taxon_products(opts)

List taxon products

Lists a taxon's products.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductsApi.new
opts = {
  id: 56, # Integer | The id of the Taxon
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO, # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
  simple: true # Boolean | Returns a simplified version of the JSON
}

begin
  # List taxon products
  result = api_instance.list_taxon_products(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->list_taxon_products: #{e}"
end
```

#### Using the list_taxon_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProducts200Response>, Integer, Hash)> list_taxon_products_with_http_info(opts)

```ruby
begin
  # List taxon products
  data, status_code, headers = api_instance.list_taxon_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProducts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->list_taxon_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the Taxon | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |
| **simple** | **Boolean** | Returns a simplified version of the JSON | [optional] |

### Return type

[**ListProducts200Response**](ListProducts200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product

> <Product> update_product(id, opts)

Update product

Updates a product.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProductsApi.new
id = 'id_example' # String | 
opts = {
  create_product_request: OpenapiClient::CreateProductRequest.new # CreateProductRequest | 
}

begin
  # Update product
  result = api_instance.update_product(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> update_product_with_http_info(id, opts)

```ruby
begin
  # Update product
  data, status_code, headers = api_instance.update_product_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProductsApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **create_product_request** | [**CreateProductRequest**](CreateProductRequest.md) |  | [optional] |

### Return type

[**Product**](Product.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

