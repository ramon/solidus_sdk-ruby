# OpenapiClient::PaymentsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_checkout_payment**](PaymentsApi.md#authorize_checkout_payment) | **PUT** /checkouts/{checkout_id}/payments/{payment_id}/authorize | Authorize checkout payment |
| [**authorize_order_payment**](PaymentsApi.md#authorize_order_payment) | **PUT** /orders/{order_number}/payments/{payment_id}/authorize | Authorize order payment |
| [**capture_checkout_payment**](PaymentsApi.md#capture_checkout_payment) | **PUT** /checkouts/{checkout_id}/payments/{payment_id}/capture | Capture checkout payment |
| [**capture_order_payment**](PaymentsApi.md#capture_order_payment) | **PUT** /orders/{order_number}/payments/{payment_id}/capture | Capture order payment |
| [**create_checkout_payment**](PaymentsApi.md#create_checkout_payment) | **POST** /checkouts/{checkout_id}/payments | Create checkout payment |
| [**create_order_payment**](PaymentsApi.md#create_order_payment) | **POST** /orders/{order_number}/payments | Create order payment |
| [**credit_checkout_payment**](PaymentsApi.md#credit_checkout_payment) | **PUT** /checkouts/{checkout_id}/payments/{payment_id}/credit | Credit checkout payment |
| [**credit_order_payment**](PaymentsApi.md#credit_order_payment) | **PUT** /orders/{order_number}/payments/{payment_id}/credit | Credit order payment |
| [**get_checkout_payment**](PaymentsApi.md#get_checkout_payment) | **GET** /checkouts/{checkout_id}/payments/{id} | Get checkout payment |
| [**get_order_payment**](PaymentsApi.md#get_order_payment) | **GET** /orders/{order_number}/payments/{id} | Get order payment |
| [**list_checkout_payments**](PaymentsApi.md#list_checkout_payments) | **GET** /checkouts/{checkout_id}/payments | List checkout payments |
| [**list_order_payments**](PaymentsApi.md#list_order_payments) | **GET** /orders/{order_number}/payments | List order payments |
| [**purchase_checkout_payment**](PaymentsApi.md#purchase_checkout_payment) | **PUT** /checkouts/{checkout_id}/payments/{payment_id}/purchase | Purchase checkout payment |
| [**purchase_order_payment**](PaymentsApi.md#purchase_order_payment) | **PUT** /orders/{order_number}/payments/{payment_id}/purchase | Purchase order payment |
| [**update_checkout_payment**](PaymentsApi.md#update_checkout_payment) | **PATCH** /checkouts/{checkout_id}/payments/{id} | Update checkout payment |
| [**update_order_payment**](PaymentsApi.md#update_order_payment) | **PATCH** /orders/{order_number}/payments/{id} | Update order payment |
| [**void_checkout_payment**](PaymentsApi.md#void_checkout_payment) | **PUT** /checkouts/{checkout_id}/payments/{payment_id}/void | Void checkout payment |
| [**void_order_payment**](PaymentsApi.md#void_order_payment) | **PUT** /orders/{order_number}/payments/{payment_id}/void | Void order payment |


## authorize_checkout_payment

> <Payment> authorize_checkout_payment(checkout_id, payment_id)

Authorize checkout payment

Authorizes a checkout's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
payment_id = 'payment_id_example' # String | 

begin
  # Authorize checkout payment
  result = api_instance.authorize_checkout_payment(checkout_id, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->authorize_checkout_payment: #{e}"
end
```

#### Using the authorize_checkout_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> authorize_checkout_payment_with_http_info(checkout_id, payment_id)

```ruby
begin
  # Authorize checkout payment
  data, status_code, headers = api_instance.authorize_checkout_payment_with_http_info(checkout_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->authorize_checkout_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authorize_order_payment

> <Payment> authorize_order_payment(order_number, payment_id)

Authorize order payment

Authorizes an order's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | 
payment_id = 'payment_id_example' # String | 

begin
  # Authorize order payment
  result = api_instance.authorize_order_payment(order_number, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->authorize_order_payment: #{e}"
end
```

#### Using the authorize_order_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> authorize_order_payment_with_http_info(order_number, payment_id)

```ruby
begin
  # Authorize order payment
  data, status_code, headers = api_instance.authorize_order_payment_with_http_info(order_number, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->authorize_order_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capture_checkout_payment

> <Payment> capture_checkout_payment(checkout_id, payment_id)

Capture checkout payment

Captures a checkout's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
payment_id = 'payment_id_example' # String | 

begin
  # Capture checkout payment
  result = api_instance.capture_checkout_payment(checkout_id, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->capture_checkout_payment: #{e}"
end
```

#### Using the capture_checkout_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> capture_checkout_payment_with_http_info(checkout_id, payment_id)

```ruby
begin
  # Capture checkout payment
  data, status_code, headers = api_instance.capture_checkout_payment_with_http_info(checkout_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->capture_checkout_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capture_order_payment

> <Payment> capture_order_payment(order_number, payment_id)

Capture order payment

Captures an order's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | 
payment_id = 'payment_id_example' # String | 

begin
  # Capture order payment
  result = api_instance.capture_order_payment(order_number, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->capture_order_payment: #{e}"
end
```

#### Using the capture_order_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> capture_order_payment_with_http_info(order_number, payment_id)

```ruby
begin
  # Capture order payment
  data, status_code, headers = api_instance.capture_order_payment_with_http_info(order_number, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->capture_order_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_checkout_payment

> <Payment> create_checkout_payment(checkout_id, opts)

Create checkout payment

Creates a new payment for a checkout. Only the checkout's owner and users that can create a payment (eg. users with admin role) are allowed to perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
opts = {
  create_checkout_payment_request: OpenapiClient::CreateCheckoutPaymentRequest.new # CreateCheckoutPaymentRequest | This requests only accepts available Payment Methods in the `payment_method_id` field.  The Payment Methods available to users for creating a new payment are the ones with both attributes `available_to_users` and `active` set to `true`.
}

begin
  # Create checkout payment
  result = api_instance.create_checkout_payment(checkout_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->create_checkout_payment: #{e}"
end
```

#### Using the create_checkout_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> create_checkout_payment_with_http_info(checkout_id, opts)

```ruby
begin
  # Create checkout payment
  data, status_code, headers = api_instance.create_checkout_payment_with_http_info(checkout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->create_checkout_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **create_checkout_payment_request** | [**CreateCheckoutPaymentRequest**](CreateCheckoutPaymentRequest.md) | This requests only accepts available Payment Methods in the &#x60;payment_method_id&#x60; field.  The Payment Methods available to users for creating a new payment are the ones with both attributes &#x60;available_to_users&#x60; and &#x60;active&#x60; set to &#x60;true&#x60;. | [optional] |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_order_payment

> <Payment> create_order_payment(order_number, opts)

Create order payment

Creates a new payment for a checkout. Only the order's owner and users that can create a payment (eg. users with admin role) are allowed to perform this action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | The order number
opts = {
  create_checkout_payment_request: OpenapiClient::CreateCheckoutPaymentRequest.new # CreateCheckoutPaymentRequest | This requests only accepts available Payment Methods in the `payment_method_id` field.  The Payment Methods available to users for creating a new payment are the ones with both attributes `available_to_users` and `active` set to `true`.
}

begin
  # Create order payment
  result = api_instance.create_order_payment(order_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->create_order_payment: #{e}"
end
```

#### Using the create_order_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> create_order_payment_with_http_info(order_number, opts)

```ruby
begin
  # Create order payment
  data, status_code, headers = api_instance.create_order_payment_with_http_info(order_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->create_order_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **create_checkout_payment_request** | [**CreateCheckoutPaymentRequest**](CreateCheckoutPaymentRequest.md) | This requests only accepts available Payment Methods in the &#x60;payment_method_id&#x60; field.  The Payment Methods available to users for creating a new payment are the ones with both attributes &#x60;available_to_users&#x60; and &#x60;active&#x60; set to &#x60;true&#x60;. | [optional] |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## credit_checkout_payment

> <Payment> credit_checkout_payment(checkout_id, payment_id)

Credit checkout payment

Credits a checkout's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
payment_id = 'payment_id_example' # String | 

begin
  # Credit checkout payment
  result = api_instance.credit_checkout_payment(checkout_id, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->credit_checkout_payment: #{e}"
end
```

#### Using the credit_checkout_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> credit_checkout_payment_with_http_info(checkout_id, payment_id)

```ruby
begin
  # Credit checkout payment
  data, status_code, headers = api_instance.credit_checkout_payment_with_http_info(checkout_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->credit_checkout_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## credit_order_payment

> <Payment> credit_order_payment(order_number, payment_id)

Credit order payment

Credits an order's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | 
payment_id = 'payment_id_example' # String | 

begin
  # Credit order payment
  result = api_instance.credit_order_payment(order_number, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->credit_order_payment: #{e}"
end
```

#### Using the credit_order_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> credit_order_payment_with_http_info(order_number, payment_id)

```ruby
begin
  # Credit order payment
  data, status_code, headers = api_instance.credit_order_payment_with_http_info(order_number, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->credit_order_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_checkout_payment

> <Payment> get_checkout_payment(checkout_id, id)

Get checkout payment

Gets a checkout's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | The payment id

begin
  # Get checkout payment
  result = api_instance.get_checkout_payment(checkout_id, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_checkout_payment: #{e}"
end
```

#### Using the get_checkout_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> get_checkout_payment_with_http_info(checkout_id, id)

```ruby
begin
  # Get checkout payment
  data, status_code, headers = api_instance.get_checkout_payment_with_http_info(checkout_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_checkout_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** | The payment id |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_payment

> Object get_order_payment(order_number, id)

Get order payment

Retrieves an orer's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | 
id = 'id_example' # String | 

begin
  # Get order payment
  result = api_instance.get_order_payment(order_number, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_order_payment: #{e}"
end
```

#### Using the get_order_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_order_payment_with_http_info(order_number, id)

```ruby
begin
  # Get order payment
  data, status_code, headers = api_instance.get_order_payment_with_http_info(order_number, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_order_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_checkout_payments

> <ListCheckoutPayments200Response> list_checkout_payments(checkout_id, opts)

List checkout payments

Lists a checkout's payments. The list of payments is only visible by the checkout's owner and by users authorized to see the order, eg. users with admin role. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List checkout payments
  result = api_instance.list_checkout_payments(checkout_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->list_checkout_payments: #{e}"
end
```

#### Using the list_checkout_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCheckoutPayments200Response>, Integer, Hash)> list_checkout_payments_with_http_info(checkout_id, opts)

```ruby
begin
  # List checkout payments
  data, status_code, headers = api_instance.list_checkout_payments_with_http_info(checkout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCheckoutPayments200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->list_checkout_payments_with_http_info: #{e}"
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

[**ListCheckoutPayments200Response**](ListCheckoutPayments200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_order_payments

> <ListCheckoutPayments200Response> list_order_payments(order_number, opts)

List order payments

Lists an order's payments.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | The order number
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List order payments
  result = api_instance.list_order_payments(order_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->list_order_payments: #{e}"
end
```

#### Using the list_order_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCheckoutPayments200Response>, Integer, Hash)> list_order_payments_with_http_info(order_number, opts)

```ruby
begin
  # List order payments
  data, status_code, headers = api_instance.list_order_payments_with_http_info(order_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCheckoutPayments200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->list_order_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** | The order number |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListCheckoutPayments200Response**](ListCheckoutPayments200Response.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purchase_checkout_payment

> <Payment> purchase_checkout_payment(checkout_id, payment_id)

Purchase checkout payment

Purchases a checkout's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
payment_id = 'payment_id_example' # String | 

begin
  # Purchase checkout payment
  result = api_instance.purchase_checkout_payment(checkout_id, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->purchase_checkout_payment: #{e}"
end
```

#### Using the purchase_checkout_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> purchase_checkout_payment_with_http_info(checkout_id, payment_id)

```ruby
begin
  # Purchase checkout payment
  data, status_code, headers = api_instance.purchase_checkout_payment_with_http_info(checkout_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->purchase_checkout_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purchase_order_payment

> <Payment> purchase_order_payment(order_number, payment_id)

Purchase order payment

Purchases an order's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | 
payment_id = 'payment_id_example' # String | 

begin
  # Purchase order payment
  result = api_instance.purchase_order_payment(order_number, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->purchase_order_payment: #{e}"
end
```

#### Using the purchase_order_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> purchase_order_payment_with_http_info(order_number, payment_id)

```ruby
begin
  # Purchase order payment
  data, status_code, headers = api_instance.purchase_order_payment_with_http_info(order_number, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->purchase_order_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_checkout_payment

> <Payment> update_checkout_payment(checkout_id, id, opts)

Update checkout payment

Updates a checkout's payment. Please note that this action can be done by users with the admin permissions on Payments (eg. users with the admin role). Only pending payment can be updated. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
id = 'id_example' # String | The payment id
opts = {
  create_checkout_payment_request: OpenapiClient::CreateCheckoutPaymentRequest.new # CreateCheckoutPaymentRequest | 
}

begin
  # Update checkout payment
  result = api_instance.update_checkout_payment(checkout_id, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->update_checkout_payment: #{e}"
end
```

#### Using the update_checkout_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> update_checkout_payment_with_http_info(checkout_id, id, opts)

```ruby
begin
  # Update checkout payment
  data, status_code, headers = api_instance.update_checkout_payment_with_http_info(checkout_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->update_checkout_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **id** | **String** | The payment id |  |
| **create_checkout_payment_request** | [**CreateCheckoutPaymentRequest**](CreateCheckoutPaymentRequest.md) |  | [optional] |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_order_payment

> <Payment> update_order_payment(order_number, id, opts)

Update order payment

Updates a checkout's payment. Please note that this action can be done by users with the admin permissions on Payments (eg. users with the admin role). Only pending payment can be updated. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: order-token
  config.api_key['order-token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['order-token'] = 'Bearer'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | 
id = 'id_example' # String | 
opts = {
  create_checkout_payment_request: OpenapiClient::CreateCheckoutPaymentRequest.new # CreateCheckoutPaymentRequest | 
}

begin
  # Update order payment
  result = api_instance.update_order_payment(order_number, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->update_order_payment: #{e}"
end
```

#### Using the update_order_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> update_order_payment_with_http_info(order_number, id, opts)

```ruby
begin
  # Update order payment
  data, status_code, headers = api_instance.update_order_payment_with_http_info(order_number, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->update_order_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **id** | **String** |  |  |
| **create_checkout_payment_request** | [**CreateCheckoutPaymentRequest**](CreateCheckoutPaymentRequest.md) |  | [optional] |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_checkout_payment

> <Payment> void_checkout_payment(checkout_id, payment_id)

Void checkout payment

Voids a checkout's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
checkout_id = 'checkout_id_example' # String | The order number
payment_id = 'payment_id_example' # String | 

begin
  # Void checkout payment
  result = api_instance.void_checkout_payment(checkout_id, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->void_checkout_payment: #{e}"
end
```

#### Using the void_checkout_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> void_checkout_payment_with_http_info(checkout_id, payment_id)

```ruby
begin
  # Void checkout payment
  data, status_code, headers = api_instance.void_checkout_payment_with_http_info(checkout_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->void_checkout_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_id** | **String** | The order number |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## void_order_payment

> <Payment> void_order_payment(order_number, payment_id)

Void order payment

Voids an order's payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PaymentsApi.new
order_number = 'order_number_example' # String | 
payment_id = 'payment_id_example' # String | 

begin
  # Void order payment
  result = api_instance.void_order_payment(order_number, payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->void_order_payment: #{e}"
end
```

#### Using the void_order_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> void_order_payment_with_http_info(order_number, payment_id)

```ruby
begin
  # Void order payment
  data, status_code, headers = api_instance.void_order_payment_with_http_info(order_number, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->void_order_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  |  |
| **payment_id** | **String** |  |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

