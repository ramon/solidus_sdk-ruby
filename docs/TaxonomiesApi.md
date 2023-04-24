# OpenapiClient::TaxonomiesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_taxonomy**](TaxonomiesApi.md#create_taxonomy) | **POST** /taxonomies | Create taxonomy |
| [**delete_taxonomy**](TaxonomiesApi.md#delete_taxonomy) | **DELETE** /taxonomies/{id} | Delete taxonomy |
| [**get_taxonomy**](TaxonomiesApi.md#get_taxonomy) | **GET** /taxonomies/{id} | Get taxonomy |
| [**list_taxonomies**](TaxonomiesApi.md#list_taxonomies) | **GET** /taxonomies | List taxonomies |
| [**update_taxonomy**](TaxonomiesApi.md#update_taxonomy) | **PATCH** /taxonomies/{id} | Update taxonomy |


## create_taxonomy

> <Taxonomy> create_taxonomy(opts)

Create taxonomy

Creates a taxonomy.  Only users with the `create` permission on `Spree::Taxonomy` can perform this action.  Creating a taxonomy, its root taxon with the same name will be automatically created. The root taxon's information will be available in the response.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonomiesApi.new
opts = {
  create_taxonomy_request: OpenapiClient::CreateTaxonomyRequest.new # CreateTaxonomyRequest | 
}

begin
  # Create taxonomy
  result = api_instance.create_taxonomy(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->create_taxonomy: #{e}"
end
```

#### Using the create_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Taxonomy>, Integer, Hash)> create_taxonomy_with_http_info(opts)

```ruby
begin
  # Create taxonomy
  data, status_code, headers = api_instance.create_taxonomy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Taxonomy>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->create_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_taxonomy_request** | [**CreateTaxonomyRequest**](CreateTaxonomyRequest.md) |  | [optional] |

### Return type

[**Taxonomy**](Taxonomy.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_taxonomy

> <Taxonomy> delete_taxonomy(id)

Delete taxonomy

Deletes a taxonomy.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonomiesApi.new
id = 'id_example' # String | The id of the taxonomy

begin
  # Delete taxonomy
  result = api_instance.delete_taxonomy(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->delete_taxonomy: #{e}"
end
```

#### Using the delete_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Taxonomy>, Integer, Hash)> delete_taxonomy_with_http_info(id)

```ruby
begin
  # Delete taxonomy
  data, status_code, headers = api_instance.delete_taxonomy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Taxonomy>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->delete_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the taxonomy |  |

### Return type

[**Taxonomy**](Taxonomy.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_taxonomy

> Object get_taxonomy(id, opts)

Get taxonomy

Retrieves a taxonomy.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonomiesApi.new
id = 'id_example' # String | The id of the taxonomy
opts = {
  set: 'set_example' # String | When `set=nested` it will recoursively return all the taxons of that taxonomy
}

begin
  # Get taxonomy
  result = api_instance.get_taxonomy(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->get_taxonomy: #{e}"
end
```

#### Using the get_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_taxonomy_with_http_info(id, opts)

```ruby
begin
  # Get taxonomy
  data, status_code, headers = api_instance.get_taxonomy_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->get_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the taxonomy |  |
| **set** | **String** | When &#x60;set&#x3D;nested&#x60; it will recoursively return all the taxons of that taxonomy | [optional][default to &#39;nested&#39;] |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_taxonomies

> <ListTaxonomies200Response> list_taxonomies(opts)

List taxonomies

Lists the taxonomies.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonomiesApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List taxonomies
  result = api_instance.list_taxonomies(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->list_taxonomies: #{e}"
end
```

#### Using the list_taxonomies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTaxonomies200Response>, Integer, Hash)> list_taxonomies_with_http_info(opts)

```ruby
begin
  # List taxonomies
  data, status_code, headers = api_instance.list_taxonomies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTaxonomies200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->list_taxonomies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListTaxonomies200Response**](ListTaxonomies200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_taxonomy

> <Taxonomy> update_taxonomy(id, opts)

Update taxonomy

Updates a taxonomy.  Only users with the `update` permission on the taxonomy can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonomiesApi.new
id = 'id_example' # String | The id of the taxonomy
opts = {
  create_taxonomy_request: OpenapiClient::CreateTaxonomyRequest.new # CreateTaxonomyRequest | 
}

begin
  # Update taxonomy
  result = api_instance.update_taxonomy(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->update_taxonomy: #{e}"
end
```

#### Using the update_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Taxonomy>, Integer, Hash)> update_taxonomy_with_http_info(id, opts)

```ruby
begin
  # Update taxonomy
  data, status_code, headers = api_instance.update_taxonomy_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Taxonomy>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonomiesApi->update_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the taxonomy |  |
| **create_taxonomy_request** | [**CreateTaxonomyRequest**](CreateTaxonomyRequest.md) |  | [optional] |

### Return type

[**Taxonomy**](Taxonomy.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

