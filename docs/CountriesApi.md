# OpenapiClient::CountriesApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_country**](CountriesApi.md#get_country) | **GET** /countries/{id} | Get country |
| [**list_countries**](CountriesApi.md#list_countries) | **GET** /countries | List countries |


## get_country

> <Country> get_country(id)

Get country

Retrieves a country.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CountriesApi.new
id = 'id_example' # String | 

begin
  # Get country
  result = api_instance.get_country(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CountriesApi->get_country: #{e}"
end
```

#### Using the get_country_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Country>, Integer, Hash)> get_country_with_http_info(id)

```ruby
begin
  # Get country
  data, status_code, headers = api_instance.get_country_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Country>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CountriesApi->get_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Country**](Country.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_countries

> <ListCountries200Response> list_countries(opts)

List countries

Lists all available countries.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CountriesApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List countries
  result = api_instance.list_countries(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CountriesApi->list_countries: #{e}"
end
```

#### Using the list_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCountries200Response>, Integer, Hash)> list_countries_with_http_info(opts)

```ruby
begin
  # List countries
  data, status_code, headers = api_instance.list_countries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCountries200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CountriesApi->list_countries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListCountries200Response**](ListCountries200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

