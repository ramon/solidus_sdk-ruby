# OpenapiClient::ReturnAuthorizationsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_checkout_return_authorization**](ReturnAuthorizationsApi.md#cancel_checkout_return_authorization) | **PUT** /checkouts/{checkout_id}/return_authorizations/{return_authorization_id}/cancel | Cancel checkout return authorization |
| [**cancel_order_return_authorization**](ReturnAuthorizationsApi.md#cancel_order_return_authorization) | **PUT** /orders/{order_number}/return_authorizations/{return_authorization_id}/cancel | Cancel order return authorization |
| [**create_checkout_return_authorization**](ReturnAuthorizationsApi.md#create_checkout_return_authorization) | **POST** /checkouts/{checkout_id}/return_authorizations | Create checkout return authorization |
| [**create_order_return_authorization**](ReturnAuthorizationsApi.md#create_order_return_authorization) | **POST** /orders/{order_number}/return_authorizations | Create order return authorization |
| [**delete_checkout_return_authorization**](ReturnAuthorizationsApi.md#delete_checkout_return_authorization) | **DELETE** /checkouts/{checkout_id}/return_authorizations/{id} | Delete checkout return authorization |
| [**delete_order_return_authorization**](ReturnAuthorizationsApi.md#delete_order_return_authorization) | **DELETE** /orders/{order_number}/return_authorizations/{id} | Delete order return authorization |
| [**get_checkout_return_authorization**](ReturnAuthorizationsApi.md#get_checkout_return_authorization) | **GET** /checkouts/{checkout_id}/return_authorizations/{id} | Get checkout return authorization |
| [**get_order_return_authorization**](ReturnAuthorizationsApi.md#get_order_return_authorization) | **GET** /orders/{order_number}/return_authorizations/{id} | Get order return authorization |
| [**list_checkout_return_authorization**](ReturnAuthorizationsApi.md#list_checkout_return_authorization) | **GET** /checkouts/{checkout_id}/return_authorizations | List checkout return authorizations |
| [**list_order_return_authorizations**](ReturnAuthorizationsApi.md#list_order_return_authorizations) | **GET** /orders/{order_number}/return_authorizations | List order return authorizations |
| [**update_checkout_return_authorization**](ReturnAuthorizationsApi.md#update_checkout_return_authorization) | **PATCH** /checkouts/{checkout_id}/return_authorizations/{id} | Update checkout return authorization |
| [**update_order_return_authorization**](ReturnAuthorizationsApi.md#update_order_return_authorization) | **PATCH** /orders/{order_number}/return_authorizations/{id} | Update order return authorization |


## cancel_checkout_return_authorization

> Object cancel_checkout_return_authorization(checkout_id, return_authorization_id)

Cancel checkout return authorization

Cancels a checkout's return authorization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
checkout_id = 'checkout_id_example' # String | The order number
return_authorization_id = 'return_authorization_id_example' # String | 

begin
  # Cancel checkout return authorization
  result = api_instance.cancel_checkout_return_authorization(checkout_id, return_authorization_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->cancel_checkout_return_authorization: #{e}"
end
```

#### Using the cancel_checkout_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> cancel_checkout_return_authorization_with_http_info(checkout_id, return_authorization_id)

```ruby
begin
  # Cancel checkout return authorization
  data, status_code, headers = api_instance.cancel_checkout_return_authorization_with_http_info(checkout_id, return_authorization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->cancel_checkout_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **return_authorization_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cancel_order_return_authorization

> Object cancel_order_return_authorization(order_number, return_authorization_id)

Cancel order return authorization

Cancels an order's return authorization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
order_number = 'order_number_example' # String | 
return_authorization_id = 'return_authorization_id_example' # String | 

begin
  # Cancel order return authorization
  result = api_instance.cancel_order_return_authorization(order_number, return_authorization_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->cancel_order_return_authorization: #{e}"
end
```

#### Using the cancel_order_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> cancel_order_return_authorization_with_http_info(order_number, return_authorization_id)

```ruby
begin
  # Cancel order return authorization
  data, status_code, headers = api_instance.cancel_order_return_authorization_with_http_info(order_number, return_authorization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->cancel_order_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **return_authorization_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_checkout_return_authorization

> Object create_checkout_return_authorization(checkout_id, opts)

Create checkout return authorization

Creates a return authorization for a checkout.  Only users with the `create` permission on `Spree::RetrunAuthorization` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
checkout_id = 'checkout_id_example' # String | The order number
opts = {
  create_checkout_return_authorization_request: OpenapiClient::CreateCheckoutReturnAuthorizationRequest.new # CreateCheckoutReturnAuthorizationRequest | 
}

begin
  # Create checkout return authorization
  result = api_instance.create_checkout_return_authorization(checkout_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->create_checkout_return_authorization: #{e}"
end
```

#### Using the create_checkout_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_checkout_return_authorization_with_http_info(checkout_id, opts)

```ruby
begin
  # Create checkout return authorization
  data, status_code, headers = api_instance.create_checkout_return_authorization_with_http_info(checkout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->create_checkout_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **create_checkout_return_authorization_request** | [**CreateCheckoutReturnAuthorizationRequest**](CreateCheckoutReturnAuthorizationRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_order_return_authorization

> Object create_order_return_authorization(order_number, opts)

Create order return authorization

Creates a return authorization for an order.  Only users with the `create` permission on `Spree::ReturnAuthorization` can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
order_number = 'order_number_example' # String | 
opts = {
  create_checkout_return_authorization_request: OpenapiClient::CreateCheckoutReturnAuthorizationRequest.new # CreateCheckoutReturnAuthorizationRequest | 
}

begin
  # Create order return authorization
  result = api_instance.create_order_return_authorization(order_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->create_order_return_authorization: #{e}"
end
```

#### Using the create_order_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_order_return_authorization_with_http_info(order_number, opts)

```ruby
begin
  # Create order return authorization
  data, status_code, headers = api_instance.create_order_return_authorization_with_http_info(order_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->create_order_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **create_checkout_return_authorization_request** | [**CreateCheckoutReturnAuthorizationRequest**](CreateCheckoutReturnAuthorizationRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_checkout_return_authorization

> Object delete_checkout_return_authorization(checkout_id, id)

Delete checkout return authorization

Deletes a checkout's return authorization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | The ID of the Spree::ReturnAuthorization

begin
  # Delete checkout return authorization
  result = api_instance.delete_checkout_return_authorization(checkout_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->delete_checkout_return_authorization: #{e}"
end
```

#### Using the delete_checkout_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_checkout_return_authorization_with_http_info(checkout_id, id)

```ruby
begin
  # Delete checkout return authorization
  data, status_code, headers = api_instance.delete_checkout_return_authorization_with_http_info(checkout_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->delete_checkout_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** | The ID of the Spree::ReturnAuthorization |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_order_return_authorization

> Object delete_order_return_authorization(order_number, id)

Delete order return authorization

Deletes an order's return authorization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
order_number = 'order_number_example' # String | The Order number
id = 'id_example' # String | The ID of the Spree::ReturnAuthorization

begin
  # Delete order return authorization
  result = api_instance.delete_order_return_authorization(order_number, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->delete_order_return_authorization: #{e}"
end
```

#### Using the delete_order_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_order_return_authorization_with_http_info(order_number, id)

```ruby
begin
  # Delete order return authorization
  data, status_code, headers = api_instance.delete_order_return_authorization_with_http_info(order_number, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->delete_order_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The Order number |  |
| **id** | **String** | The ID of the Spree::ReturnAuthorization |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_checkout_return_authorization

> Object get_checkout_return_authorization(checkout_id, id)

Get checkout return authorization

Gets a checkout's return authorization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | The ID of the Spree::ReturnAuthorization

begin
  # Get checkout return authorization
  result = api_instance.get_checkout_return_authorization(checkout_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->get_checkout_return_authorization: #{e}"
end
```

#### Using the get_checkout_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_checkout_return_authorization_with_http_info(checkout_id, id)

```ruby
begin
  # Get checkout return authorization
  data, status_code, headers = api_instance.get_checkout_return_authorization_with_http_info(checkout_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->get_checkout_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** | The ID of the Spree::ReturnAuthorization |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_return_authorization

> Object get_order_return_authorization(order_number, id)

Get order return authorization

Retrieves an order's return authorization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
order_number = 'order_number_example' # String | The Order number
id = 'id_example' # String | The ID of the Spree::ReturnAuthorization

begin
  # Get order return authorization
  result = api_instance.get_order_return_authorization(order_number, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->get_order_return_authorization: #{e}"
end
```

#### Using the get_order_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_order_return_authorization_with_http_info(order_number, id)

```ruby
begin
  # Get order return authorization
  data, status_code, headers = api_instance.get_order_return_authorization_with_http_info(order_number, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->get_order_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The Order number |  |
| **id** | **String** | The ID of the Spree::ReturnAuthorization |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_checkout_return_authorization

> <ListCheckoutReturnAuthorization200Response> list_checkout_return_authorization(checkout_id, opts)

List checkout return authorizations

Lists a checkout's return authorizations.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
checkout_id = 'checkout_id_example' # String | The order number
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List checkout return authorizations
  result = api_instance.list_checkout_return_authorization(checkout_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->list_checkout_return_authorization: #{e}"
end
```

#### Using the list_checkout_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCheckoutReturnAuthorization200Response>, Integer, Hash)> list_checkout_return_authorization_with_http_info(checkout_id, opts)

```ruby
begin
  # List checkout return authorizations
  data, status_code, headers = api_instance.list_checkout_return_authorization_with_http_info(checkout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCheckoutReturnAuthorization200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->list_checkout_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListCheckoutReturnAuthorization200Response**](ListCheckoutReturnAuthorization200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_order_return_authorizations

> <ListCheckoutReturnAuthorization200Response> list_order_return_authorizations(order_number, opts)

List order return authorizations

Lists an order's return authorizations.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
order_number = 'order_number_example' # String | 
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List order return authorizations
  result = api_instance.list_order_return_authorizations(order_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->list_order_return_authorizations: #{e}"
end
```

#### Using the list_order_return_authorizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCheckoutReturnAuthorization200Response>, Integer, Hash)> list_order_return_authorizations_with_http_info(order_number, opts)

```ruby
begin
  # List order return authorizations
  data, status_code, headers = api_instance.list_order_return_authorizations_with_http_info(order_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCheckoutReturnAuthorization200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->list_order_return_authorizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListCheckoutReturnAuthorization200Response**](ListCheckoutReturnAuthorization200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_checkout_return_authorization

> Object update_checkout_return_authorization(checkout_id, id, opts)

Update checkout return authorization

Updates a checkout's return authorization.  Only users with the `update` permission on the return authorization can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | The ID of the Spree::ReturnAuthorization
opts = {
  create_checkout_return_authorization_request: OpenapiClient::CreateCheckoutReturnAuthorizationRequest.new # CreateCheckoutReturnAuthorizationRequest | 
}

begin
  # Update checkout return authorization
  result = api_instance.update_checkout_return_authorization(checkout_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->update_checkout_return_authorization: #{e}"
end
```

#### Using the update_checkout_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_checkout_return_authorization_with_http_info(checkout_id, id, opts)

```ruby
begin
  # Update checkout return authorization
  data, status_code, headers = api_instance.update_checkout_return_authorization_with_http_info(checkout_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->update_checkout_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** | The ID of the Spree::ReturnAuthorization |  |
| **create_checkout_return_authorization_request** | [**CreateCheckoutReturnAuthorizationRequest**](CreateCheckoutReturnAuthorizationRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_order_return_authorization

> Object update_order_return_authorization(order_number, id, opts)

Update order return authorization

Updates an order's return authorization.  Only users with the `update` permission on the return authorization can perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReturnAuthorizationsApi.new
order_number = 'order_number_example' # String | The Order number
id = 'id_example' # String | The ID of the Spree::ReturnAuthorization
opts = {
  create_checkout_return_authorization_request: OpenapiClient::CreateCheckoutReturnAuthorizationRequest.new # CreateCheckoutReturnAuthorizationRequest | 
}

begin
  # Update order return authorization
  result = api_instance.update_order_return_authorization(order_number, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->update_order_return_authorization: #{e}"
end
```

#### Using the update_order_return_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_order_return_authorization_with_http_info(order_number, id, opts)

```ruby
begin
  # Update order return authorization
  data, status_code, headers = api_instance.update_order_return_authorization_with_http_info(order_number, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnAuthorizationsApi->update_order_return_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The Order number |  |
| **id** | **String** | The ID of the Spree::ReturnAuthorization |  |
| **create_checkout_return_authorization_request** | [**CreateCheckoutReturnAuthorizationRequest**](CreateCheckoutReturnAuthorizationRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

