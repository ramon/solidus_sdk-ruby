# OpenapiClient::AddressBooksApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_address_book**](AddressBooksApi.md#get_user_address_book) | **GET** /users/{user_id}/address_book | Get user address book |
| [**remove_address_from_user_address_book**](AddressBooksApi.md#remove_address_from_user_address_book) | **DELETE** /users/{user_id}/address_book | Remove address from user address book |
| [**update_user_address_book**](AddressBooksApi.md#update_user_address_book) | **PATCH** /users/{user_id}/address_book | Update user address book |


## get_user_address_book

> <Array<AddressBookInner>> get_user_address_book(user_id)

Get user address book

Retrieves a user's address book.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AddressBooksApi.new
user_id = 'user_id_example' # String | 

begin
  # Get user address book
  result = api_instance.get_user_address_book(user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressBooksApi->get_user_address_book: #{e}"
end
```

#### Using the get_user_address_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddressBookInner>>, Integer, Hash)> get_user_address_book_with_http_info(user_id)

```ruby
begin
  # Get user address book
  data, status_code, headers = api_instance.get_user_address_book_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddressBookInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressBooksApi->get_user_address_book_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

[**Array&lt;AddressBookInner&gt;**](AddressBookInner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_address_from_user_address_book

> <Array<AddressBookInner>> remove_address_from_user_address_book(user_id, opts)

Remove address from user address book

Removes an address from a user's address book.  **Note:** Rather than delete a `Spree::UserAddress` record this action set its `archived` attribute to `true`.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AddressBooksApi.new
user_id = 'user_id_example' # String | 
opts = {
  address_id: 56 # Integer | 
}

begin
  # Remove address from user address book
  result = api_instance.remove_address_from_user_address_book(user_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressBooksApi->remove_address_from_user_address_book: #{e}"
end
```

#### Using the remove_address_from_user_address_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddressBookInner>>, Integer, Hash)> remove_address_from_user_address_book_with_http_info(user_id, opts)

```ruby
begin
  # Remove address from user address book
  data, status_code, headers = api_instance.remove_address_from_user_address_book_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddressBookInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressBooksApi->remove_address_from_user_address_book_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **address_id** | **Integer** |  | [optional] |

### Return type

[**Array&lt;AddressBookInner&gt;**](AddressBookInner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user_address_book

> <Array<AddressBookInner>> update_user_address_book(user_id, opts)

Update user address book

Updates a user's address book.  **Note:** if the passed `id` matches an existing `address` a new `Spree::Address` record will be created and the matched `address` `archived` on `Spree::UserAddress`. For a similar logic, if the passed `id` matches an existing `address` which is in `archived` state, the `Spree::UserAddress#archived` record will be restored to `false`. See `user_address_book.rb` for further information.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AddressBooksApi.new
user_id = 'user_id_example' # String | 
opts = {
  address_book_input: OpenapiClient::AddressBookInput.new # AddressBookInput | 
}

begin
  # Update user address book
  result = api_instance.update_user_address_book(user_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressBooksApi->update_user_address_book: #{e}"
end
```

#### Using the update_user_address_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddressBookInner>>, Integer, Hash)> update_user_address_book_with_http_info(user_id, opts)

```ruby
begin
  # Update user address book
  data, status_code, headers = api_instance.update_user_address_book_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddressBookInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddressBooksApi->update_user_address_book_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **address_book_input** | [**AddressBookInput**](AddressBookInput.md) |  | [optional] |

### Return type

[**Array&lt;AddressBookInner&gt;**](AddressBookInner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

