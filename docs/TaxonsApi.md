# OpenapiClient::TaxonsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_taxonomy_taxon**](TaxonsApi.md#create_taxonomy_taxon) | **POST** /taxonomies/{taxonomy_id}/taxons | Create taxonomy taxon |
| [**delete_taxonomy_taxon**](TaxonsApi.md#delete_taxonomy_taxon) | **DELETE** /taxonomies/{taxonomy_id}/taxons/{id} | Delete taxonomy taxon |
| [**get_taxonomy_taxon**](TaxonsApi.md#get_taxonomy_taxon) | **GET** /taxonomies/{taxonomy_id}/taxons/{id} | Get taxonomy taxon |
| [**list_taxonomy_taxons**](TaxonsApi.md#list_taxonomy_taxons) | **GET** /taxonomies/{taxonomy_id}/taxons | List taxonomy taxons |
| [**list_taxons**](TaxonsApi.md#list_taxons) | **GET** /taxons | List taxons |
| [**update_taxonomy_taxon**](TaxonsApi.md#update_taxonomy_taxon) | **PATCH** /taxonomies/{taxonomy_id}/taxons/{id} | Update taxonomy taxon |


## create_taxonomy_taxon

> <Taxon> create_taxonomy_taxon(taxonomy_id, opts)

Create taxonomy taxon

Creates a taxon for a taxonomy.  Only users with the `create` permission on `Spree::Taxon` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonsApi.new
taxonomy_id = 'taxonomy_id_example' # String | The id of the taxonomy for which the new taxon will be added
opts = {
  create_taxonomy_taxon_request: OpenapiClient::CreateTaxonomyTaxonRequest.new # CreateTaxonomyTaxonRequest | 
}

begin
  # Create taxonomy taxon
  result = api_instance.create_taxonomy_taxon(taxonomy_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->create_taxonomy_taxon: #{e}"
end
```

#### Using the create_taxonomy_taxon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Taxon>, Integer, Hash)> create_taxonomy_taxon_with_http_info(taxonomy_id, opts)

```ruby
begin
  # Create taxonomy taxon
  data, status_code, headers = api_instance.create_taxonomy_taxon_with_http_info(taxonomy_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Taxon>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->create_taxonomy_taxon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_id** | **String** | The id of the taxonomy for which the new taxon will be added |  |
| **create_taxonomy_taxon_request** | [**CreateTaxonomyTaxonRequest**](CreateTaxonomyTaxonRequest.md) |  | [optional] |

### Return type

[**Taxon**](Taxon.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_taxonomy_taxon

> <Taxon> delete_taxonomy_taxon(taxonomy_id, id)

Delete taxonomy taxon

Deletes a taxonomy's taxon.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonsApi.new
taxonomy_id = 'taxonomy_id_example' # String | The id of the taxon's taxonomy
id = 'id_example' # String | The id of the taxon

begin
  # Delete taxonomy taxon
  result = api_instance.delete_taxonomy_taxon(taxonomy_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->delete_taxonomy_taxon: #{e}"
end
```

#### Using the delete_taxonomy_taxon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Taxon>, Integer, Hash)> delete_taxonomy_taxon_with_http_info(taxonomy_id, id)

```ruby
begin
  # Delete taxonomy taxon
  data, status_code, headers = api_instance.delete_taxonomy_taxon_with_http_info(taxonomy_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Taxon>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->delete_taxonomy_taxon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_id** | **String** | The id of the taxon&#39;s taxonomy |  |
| **id** | **String** | The id of the taxon |  |

### Return type

[**Taxon**](Taxon.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_taxonomy_taxon

> Object get_taxonomy_taxon(taxonomy_id, id)

Get taxonomy taxon

Retrieves a taxonomy's taxon.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonsApi.new
taxonomy_id = 'taxonomy_id_example' # String | The id of the taxon's taxonomy
id = 'id_example' # String | The id of the taxon

begin
  # Get taxonomy taxon
  result = api_instance.get_taxonomy_taxon(taxonomy_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->get_taxonomy_taxon: #{e}"
end
```

#### Using the get_taxonomy_taxon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_taxonomy_taxon_with_http_info(taxonomy_id, id)

```ruby
begin
  # Get taxonomy taxon
  data, status_code, headers = api_instance.get_taxonomy_taxon_with_http_info(taxonomy_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->get_taxonomy_taxon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_id** | **String** | The id of the taxon&#39;s taxonomy |  |
| **id** | **String** | The id of the taxon |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_taxonomy_taxons

> <ListTaxonomyTaxons200Response> list_taxonomy_taxons(taxonomy_id, opts)

List taxonomy taxons

Lists a taxonomy's taxons.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonsApi.new
taxonomy_id = 'taxonomy_id_example' # String | The id of the taxonomy for which the new taxon will be added
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List taxonomy taxons
  result = api_instance.list_taxonomy_taxons(taxonomy_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->list_taxonomy_taxons: #{e}"
end
```

#### Using the list_taxonomy_taxons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTaxonomyTaxons200Response>, Integer, Hash)> list_taxonomy_taxons_with_http_info(taxonomy_id, opts)

```ruby
begin
  # List taxonomy taxons
  data, status_code, headers = api_instance.list_taxonomy_taxons_with_http_info(taxonomy_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTaxonomyTaxons200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->list_taxonomy_taxons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_id** | **String** | The id of the taxonomy for which the new taxon will be added |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListTaxonomyTaxons200Response**](ListTaxonomyTaxons200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_taxons

> <ListTaxonomyTaxons200Response> list_taxons(opts)

List taxons

Lists all taxons.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonsApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO, # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
  without_children: true # Boolean | When set to `true`, it won't recursively return all the taxons' children.
}

begin
  # List taxons
  result = api_instance.list_taxons(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->list_taxons: #{e}"
end
```

#### Using the list_taxons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTaxonomyTaxons200Response>, Integer, Hash)> list_taxons_with_http_info(opts)

```ruby
begin
  # List taxons
  data, status_code, headers = api_instance.list_taxons_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTaxonomyTaxons200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->list_taxons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |
| **without_children** | **Boolean** | When set to &#x60;true&#x60;, it won&#39;t recursively return all the taxons&#39; children. | [optional] |

### Return type

[**ListTaxonomyTaxons200Response**](ListTaxonomyTaxons200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_taxonomy_taxon

> <Taxon> update_taxonomy_taxon(taxonomy_id, id, opts)

Update taxonomy taxon

Updates a taxonomy's taxon.  Only users with the `update` permission on the taxon can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxonsApi.new
taxonomy_id = 'taxonomy_id_example' # String | The id of the taxon's taxonomy
id = 'id_example' # String | The id of the taxon
opts = {
  create_taxonomy_taxon_request: OpenapiClient::CreateTaxonomyTaxonRequest.new # CreateTaxonomyTaxonRequest | 
}

begin
  # Update taxonomy taxon
  result = api_instance.update_taxonomy_taxon(taxonomy_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->update_taxonomy_taxon: #{e}"
end
```

#### Using the update_taxonomy_taxon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Taxon>, Integer, Hash)> update_taxonomy_taxon_with_http_info(taxonomy_id, id, opts)

```ruby
begin
  # Update taxonomy taxon
  data, status_code, headers = api_instance.update_taxonomy_taxon_with_http_info(taxonomy_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Taxon>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxonsApi->update_taxonomy_taxon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taxonomy_id** | **String** | The id of the taxon&#39;s taxonomy |  |
| **id** | **String** | The id of the taxon |  |
| **create_taxonomy_taxon_request** | [**CreateTaxonomyTaxonRequest**](CreateTaxonomyTaxonRequest.md) |  | [optional] |

### Return type

[**Taxon**](Taxon.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

