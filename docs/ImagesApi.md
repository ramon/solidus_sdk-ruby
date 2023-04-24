# OpenapiClient::ImagesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product_image**](ImagesApi.md#create_product_image) | **POST** /products/{product_id}/images | Create product image |
| [**create_variant_image**](ImagesApi.md#create_variant_image) | **POST** /variants/{variant_id}/images | Create variant image |
| [**delete_product_image**](ImagesApi.md#delete_product_image) | **DELETE** /products/{product_id}/images/{id} | Delete product image |
| [**delete_variant_image**](ImagesApi.md#delete_variant_image) | **DELETE** /variants/{variant_id}/images/{id} | Delete variant image |
| [**get_product_image**](ImagesApi.md#get_product_image) | **GET** /products/{product_id}/images/{id} | Get product image |
| [**get_variant_image**](ImagesApi.md#get_variant_image) | **GET** /variants/{variant_id}/images/{id} | Get variant image |
| [**list_product_images**](ImagesApi.md#list_product_images) | **GET** /products/{product_id}/images | List product images |
| [**list_variant_images**](ImagesApi.md#list_variant_images) | **GET** /variants/{variant_id}/images | List variant images |
| [**update_product_image**](ImagesApi.md#update_product_image) | **PATCH** /products/{product_id}/images/{id} | Update product image |
| [**update_variant_image**](ImagesApi.md#update_variant_image) | **PATCH** /variants/{variant_id}/images/{id} | Update variant image |


## create_product_image

> <Image> create_product_image(product_id, opts)

Create product image

Creates an image for a product.  Only users with the `create` permission on `Spree::Image` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
product_id = 'product_id_example' # String | 
opts = {
  create_product_image_request: OpenapiClient::CreateProductImageRequest.new # CreateProductImageRequest | 
}

begin
  # Create product image
  result = api_instance.create_product_image(product_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->create_product_image: #{e}"
end
```

#### Using the create_product_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> create_product_image_with_http_info(product_id, opts)

```ruby
begin
  # Create product image
  data, status_code, headers = api_instance.create_product_image_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->create_product_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **create_product_image_request** | [**CreateProductImageRequest**](CreateProductImageRequest.md) |  | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_variant_image

> <Image> create_variant_image(variant_id, opts)

Create variant image

Creates an image for a variant.  Only users with the `create` permission on `Spree::Image` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
variant_id = 'variant_id_example' # String | 
opts = {
  create_product_image_request: OpenapiClient::CreateProductImageRequest.new # CreateProductImageRequest | 
}

begin
  # Create variant image
  result = api_instance.create_variant_image(variant_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->create_variant_image: #{e}"
end
```

#### Using the create_variant_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> create_variant_image_with_http_info(variant_id, opts)

```ruby
begin
  # Create variant image
  data, status_code, headers = api_instance.create_variant_image_with_http_info(variant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->create_variant_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **String** |  |  |
| **create_product_image_request** | [**CreateProductImageRequest**](CreateProductImageRequest.md) |  | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product_image

> <Image> delete_product_image(product_id, id)

Delete product image

Deletes a product's image.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
product_id = 'product_id_example' # String | The id of the Spree::Product
id = 'id_example' # String | The id of the Spree::Image

begin
  # Delete product image
  result = api_instance.delete_product_image(product_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->delete_product_image: #{e}"
end
```

#### Using the delete_product_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> delete_product_image_with_http_info(product_id, id)

```ruby
begin
  # Delete product image
  data, status_code, headers = api_instance.delete_product_image_with_http_info(product_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->delete_product_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The id of the Spree::Product |  |
| **id** | **String** | The id of the Spree::Image |  |

### Return type

[**Image**](Image.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_variant_image

> <Image> delete_variant_image(variant_id, id)

Delete variant image

Deletes a variant's image.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
variant_id = 'variant_id_example' # String | The id of the Spree::Variant
id = 'id_example' # String | The id of the Spree::Image

begin
  # Delete variant image
  result = api_instance.delete_variant_image(variant_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->delete_variant_image: #{e}"
end
```

#### Using the delete_variant_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> delete_variant_image_with_http_info(variant_id, id)

```ruby
begin
  # Delete variant image
  data, status_code, headers = api_instance.delete_variant_image_with_http_info(variant_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->delete_variant_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **String** | The id of the Spree::Variant |  |
| **id** | **String** | The id of the Spree::Image |  |

### Return type

[**Image**](Image.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_image

> <Image> get_product_image(product_id, id)

Get product image

Retrieves a product's image.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
product_id = 'product_id_example' # String | The id of the Spree::Product
id = 'id_example' # String | The id of the Spree::Image

begin
  # Get product image
  result = api_instance.get_product_image(product_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->get_product_image: #{e}"
end
```

#### Using the get_product_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> get_product_image_with_http_info(product_id, id)

```ruby
begin
  # Get product image
  data, status_code, headers = api_instance.get_product_image_with_http_info(product_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->get_product_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The id of the Spree::Product |  |
| **id** | **String** | The id of the Spree::Image |  |

### Return type

[**Image**](Image.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_variant_image

> <Image> get_variant_image(variant_id, id)

Get variant image

Retrieves a variant's image.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
variant_id = 'variant_id_example' # String | The id of the Spree::Variant
id = 'id_example' # String | The id of the Spree::Image

begin
  # Get variant image
  result = api_instance.get_variant_image(variant_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->get_variant_image: #{e}"
end
```

#### Using the get_variant_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> get_variant_image_with_http_info(variant_id, id)

```ruby
begin
  # Get variant image
  data, status_code, headers = api_instance.get_variant_image_with_http_info(variant_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->get_variant_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **String** | The id of the Spree::Variant |  |
| **id** | **String** | The id of the Spree::Image |  |

### Return type

[**Image**](Image.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_images

> <ListProductImages200Response> list_product_images(product_id)

List product images

Retrieves a product's images.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
product_id = 'product_id_example' # String | 

begin
  # List product images
  result = api_instance.list_product_images(product_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->list_product_images: #{e}"
end
```

#### Using the list_product_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductImages200Response>, Integer, Hash)> list_product_images_with_http_info(product_id)

```ruby
begin
  # List product images
  data, status_code, headers = api_instance.list_product_images_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductImages200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->list_product_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |

### Return type

[**ListProductImages200Response**](ListProductImages200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_variant_images

> <ListProductImages200Response> list_variant_images(variant_id)

List variant images

Lists a variant's images.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
variant_id = 'variant_id_example' # String | 

begin
  # List variant images
  result = api_instance.list_variant_images(variant_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->list_variant_images: #{e}"
end
```

#### Using the list_variant_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductImages200Response>, Integer, Hash)> list_variant_images_with_http_info(variant_id)

```ruby
begin
  # List variant images
  data, status_code, headers = api_instance.list_variant_images_with_http_info(variant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductImages200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->list_variant_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **String** |  |  |

### Return type

[**ListProductImages200Response**](ListProductImages200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product_image

> <Image> update_product_image(product_id, id, opts)

Update product image

Updates a product's image.  Only users with the `update` permission on the image can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
product_id = 'product_id_example' # String | The id of the Spree::Product
id = 'id_example' # String | The id of the Spree::Image
opts = {
  create_product_image_request: OpenapiClient::CreateProductImageRequest.new # CreateProductImageRequest | 
}

begin
  # Update product image
  result = api_instance.update_product_image(product_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->update_product_image: #{e}"
end
```

#### Using the update_product_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> update_product_image_with_http_info(product_id, id, opts)

```ruby
begin
  # Update product image
  data, status_code, headers = api_instance.update_product_image_with_http_info(product_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->update_product_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The id of the Spree::Product |  |
| **id** | **String** | The id of the Spree::Image |  |
| **create_product_image_request** | [**CreateProductImageRequest**](CreateProductImageRequest.md) |  | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_variant_image

> <Image> update_variant_image(variant_id, id, opts)

Update variant image

Updates a variant's image.  Only users with the `update` permission on the image can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ImagesApi.new
variant_id = 'variant_id_example' # String | The id of the Spree::Variant
id = 'id_example' # String | The id of the Spree::Image
opts = {
  create_product_image_request: OpenapiClient::CreateProductImageRequest.new # CreateProductImageRequest | 
}

begin
  # Update variant image
  result = api_instance.update_variant_image(variant_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->update_variant_image: #{e}"
end
```

#### Using the update_variant_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> update_variant_image_with_http_info(variant_id, id, opts)

```ruby
begin
  # Update variant image
  data, status_code, headers = api_instance.update_variant_image_with_http_info(variant_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ImagesApi->update_variant_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **String** | The id of the Spree::Variant |  |
| **id** | **String** | The id of the Spree::Image |  |
| **create_product_image_request** | [**CreateProductImageRequest**](CreateProductImageRequest.md) |  | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

