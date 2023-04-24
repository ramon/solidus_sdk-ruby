# OpenapiClient::ShipmentsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_shipment_item**](ShipmentsApi.md#add_shipment_item) | **PUT** /shipments/{shipment_number}/add | Add shipment item |
| [**create_shipment**](ShipmentsApi.md#create_shipment) | **POST** /shipments | Create shipment |
| [**list_shipment_estimated_rates**](ShipmentsApi.md#list_shipment_estimated_rates) | **GET** /shipments/{shipment_number}/estimated_rates | List shipment estimated rates |
| [**list_user_shipments**](ShipmentsApi.md#list_user_shipments) | **GET** /shipments/mine | List user&#39;s shipments |
| [**ready_shipment**](ShipmentsApi.md#ready_shipment) | **PUT** /shipments/{shipment_number}/ready | Ready shipment |
| [**remove_shipment_id**](ShipmentsApi.md#remove_shipment_id) | **PUT** /shipments/{shipment_id}/remove | Remove shipment item |
| [**select_shipment_shipping_method**](ShipmentsApi.md#select_shipment_shipping_method) | **PUT** /shipments/{shipment_number}/select_shipping_method | Select shipment shipping method |
| [**ship_shipment**](ShipmentsApi.md#ship_shipment) | **PUT** /shipments/{shipment_number}/ship | Ship shipment |
| [**transfer_shipment_item_to_location**](ShipmentsApi.md#transfer_shipment_item_to_location) | **POST** /shipments/transfer_to_location | Transfer shipment item to location |
| [**transfer_shipment_item_to_shipment**](ShipmentsApi.md#transfer_shipment_item_to_shipment) | **POST** /shipments/transfer_to_shipment | Transfer shipment item to shipment |
| [**update_shipment**](ShipmentsApi.md#update_shipment) | **PATCH** /shipments/{number} | Update shipment |


## add_shipment_item

> <Shipment> add_shipment_item(shipment_number, opts)

Add shipment item

Adds an item to a shipment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
shipment_number = 'shipment_number_example' # String | 
opts = {
  add_shipment_item_request: OpenapiClient::AddShipmentItemRequest.new # AddShipmentItemRequest | 
}

begin
  # Add shipment item
  result = api_instance.add_shipment_item(shipment_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->add_shipment_item: #{e}"
end
```

#### Using the add_shipment_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shipment>, Integer, Hash)> add_shipment_item_with_http_info(shipment_number, opts)

```ruby
begin
  # Add shipment item
  data, status_code, headers = api_instance.add_shipment_item_with_http_info(shipment_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shipment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->add_shipment_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipment_number** | **String** |  |  |
| **add_shipment_item_request** | [**AddShipmentItemRequest**](AddShipmentItemRequest.md) |  | [optional] |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_shipment

> <Shipment> create_shipment(opts)

Create shipment

Creates a shipment.  Please note that this request can be only performed by users with the `create` permission on the shipment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
opts = {
  create_shipment_request: OpenapiClient::CreateShipmentRequest.new # CreateShipmentRequest | 
}

begin
  # Create shipment
  result = api_instance.create_shipment(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->create_shipment: #{e}"
end
```

#### Using the create_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shipment>, Integer, Hash)> create_shipment_with_http_info(opts)

```ruby
begin
  # Create shipment
  data, status_code, headers = api_instance.create_shipment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shipment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->create_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_shipment_request** | [**CreateShipmentRequest**](CreateShipmentRequest.md) |  | [optional] |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_shipment_estimated_rates

> <ListShipmentEstimatedRates200Response> list_shipment_estimated_rates(shipment_number)

List shipment estimated rates

Lists a shipment's estimated rates.

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

api_instance = OpenapiClient::ShipmentsApi.new
shipment_number = 'shipment_number_example' # String | 

begin
  # List shipment estimated rates
  result = api_instance.list_shipment_estimated_rates(shipment_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->list_shipment_estimated_rates: #{e}"
end
```

#### Using the list_shipment_estimated_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListShipmentEstimatedRates200Response>, Integer, Hash)> list_shipment_estimated_rates_with_http_info(shipment_number)

```ruby
begin
  # List shipment estimated rates
  data, status_code, headers = api_instance.list_shipment_estimated_rates_with_http_info(shipment_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListShipmentEstimatedRates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->list_shipment_estimated_rates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipment_number** | **String** |  |  |

### Return type

[**ListShipmentEstimatedRates200Response**](ListShipmentEstimatedRates200Response.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_shipments

> <ListUserShipments200Response> list_user_shipments(opts)

List user's shipments

Lists the current user's shipments.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List user's shipments
  result = api_instance.list_user_shipments(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->list_user_shipments: #{e}"
end
```

#### Using the list_user_shipments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUserShipments200Response>, Integer, Hash)> list_user_shipments_with_http_info(opts)

```ruby
begin
  # List user's shipments
  data, status_code, headers = api_instance.list_user_shipments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUserShipments200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->list_user_shipments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListUserShipments200Response**](ListUserShipments200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ready_shipment

> <Shipment> ready_shipment(shipment_number)

Ready shipment

Readies a shipment for processing.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
shipment_number = 'shipment_number_example' # String | 

begin
  # Ready shipment
  result = api_instance.ready_shipment(shipment_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->ready_shipment: #{e}"
end
```

#### Using the ready_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shipment>, Integer, Hash)> ready_shipment_with_http_info(shipment_number)

```ruby
begin
  # Ready shipment
  data, status_code, headers = api_instance.ready_shipment_with_http_info(shipment_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shipment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->ready_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipment_number** | **String** |  |  |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_shipment_id

> <Shipment> remove_shipment_id(shipment_id, opts)

Remove shipment item

Removes an item from a shipment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
shipment_id = 'shipment_id_example' # String | 
opts = {
  add_shipment_item_request: OpenapiClient::AddShipmentItemRequest.new # AddShipmentItemRequest | 
}

begin
  # Remove shipment item
  result = api_instance.remove_shipment_id(shipment_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->remove_shipment_id: #{e}"
end
```

#### Using the remove_shipment_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shipment>, Integer, Hash)> remove_shipment_id_with_http_info(shipment_id, opts)

```ruby
begin
  # Remove shipment item
  data, status_code, headers = api_instance.remove_shipment_id_with_http_info(shipment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shipment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->remove_shipment_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipment_id** | **String** |  |  |
| **add_shipment_item_request** | [**AddShipmentItemRequest**](AddShipmentItemRequest.md) |  | [optional] |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## select_shipment_shipping_method

> <Shipment> select_shipment_shipping_method(shipment_number, opts)

Select shipment shipping method

Selects the shipping method for a shipment.

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

api_instance = OpenapiClient::ShipmentsApi.new
shipment_number = 'shipment_number_example' # String | 
opts = {
  select_shipment_shipping_method_request: OpenapiClient::SelectShipmentShippingMethodRequest.new # SelectShipmentShippingMethodRequest | 
}

begin
  # Select shipment shipping method
  result = api_instance.select_shipment_shipping_method(shipment_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->select_shipment_shipping_method: #{e}"
end
```

#### Using the select_shipment_shipping_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shipment>, Integer, Hash)> select_shipment_shipping_method_with_http_info(shipment_number, opts)

```ruby
begin
  # Select shipment shipping method
  data, status_code, headers = api_instance.select_shipment_shipping_method_with_http_info(shipment_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shipment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->select_shipment_shipping_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipment_number** | **String** |  |  |
| **select_shipment_shipping_method_request** | [**SelectShipmentShippingMethodRequest**](SelectShipmentShippingMethodRequest.md) |  | [optional] |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key), [order-token](../README.md#order-token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ship_shipment

> <Shipment> ship_shipment(shipment_number, opts)

Ship shipment

Ships a shipment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
shipment_number = 'shipment_number_example' # String | 
opts = {
  ship_shipment_request: OpenapiClient::ShipShipmentRequest.new # ShipShipmentRequest | 
}

begin
  # Ship shipment
  result = api_instance.ship_shipment(shipment_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->ship_shipment: #{e}"
end
```

#### Using the ship_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shipment>, Integer, Hash)> ship_shipment_with_http_info(shipment_number, opts)

```ruby
begin
  # Ship shipment
  data, status_code, headers = api_instance.ship_shipment_with_http_info(shipment_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shipment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->ship_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipment_number** | **String** |  |  |
| **ship_shipment_request** | [**ShipShipmentRequest**](ShipShipmentRequest.md) |  | [optional] |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_shipment_item_to_location

> <TransferShipmentItemToLocation200Response> transfer_shipment_item_to_location(opts)

Transfer shipment item to location

Transfers a shipment's item to a different stock location.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
opts = {
  transfer_shipment_item_to_location_request: OpenapiClient::TransferShipmentItemToLocationRequest.new # TransferShipmentItemToLocationRequest | 
}

begin
  # Transfer shipment item to location
  result = api_instance.transfer_shipment_item_to_location(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->transfer_shipment_item_to_location: #{e}"
end
```

#### Using the transfer_shipment_item_to_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferShipmentItemToLocation200Response>, Integer, Hash)> transfer_shipment_item_to_location_with_http_info(opts)

```ruby
begin
  # Transfer shipment item to location
  data, status_code, headers = api_instance.transfer_shipment_item_to_location_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferShipmentItemToLocation200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->transfer_shipment_item_to_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_shipment_item_to_location_request** | [**TransferShipmentItemToLocationRequest**](TransferShipmentItemToLocationRequest.md) |  | [optional] |

### Return type

[**TransferShipmentItemToLocation200Response**](TransferShipmentItemToLocation200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_shipment_item_to_shipment

> <TransferShipmentItemToLocation200Response> transfer_shipment_item_to_shipment(opts)

Transfer shipment item to shipment

Transfer a shipment's item to another shipment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
opts = {
  transfer_shipment_item_to_shipment_request: OpenapiClient::TransferShipmentItemToShipmentRequest.new # TransferShipmentItemToShipmentRequest | 
}

begin
  # Transfer shipment item to shipment
  result = api_instance.transfer_shipment_item_to_shipment(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->transfer_shipment_item_to_shipment: #{e}"
end
```

#### Using the transfer_shipment_item_to_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferShipmentItemToLocation200Response>, Integer, Hash)> transfer_shipment_item_to_shipment_with_http_info(opts)

```ruby
begin
  # Transfer shipment item to shipment
  data, status_code, headers = api_instance.transfer_shipment_item_to_shipment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferShipmentItemToLocation200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->transfer_shipment_item_to_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_shipment_item_to_shipment_request** | [**TransferShipmentItemToShipmentRequest**](TransferShipmentItemToShipmentRequest.md) |  | [optional] |

### Return type

[**TransferShipmentItemToLocation200Response**](TransferShipmentItemToLocation200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_shipment

> <Shipment> update_shipment(number, opts)

Update shipment

Updates a shipment.  Please note that this request can be only performed by users with the `update` permission on the shipment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ShipmentsApi.new
number = 'number_example' # String | 
opts = {
  update_shipment_request: OpenapiClient::UpdateShipmentRequest.new # UpdateShipmentRequest | 
}

begin
  # Update shipment
  result = api_instance.update_shipment(number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->update_shipment: #{e}"
end
```

#### Using the update_shipment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Shipment>, Integer, Hash)> update_shipment_with_http_info(number, opts)

```ruby
begin
  # Update shipment
  data, status_code, headers = api_instance.update_shipment_with_http_info(number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Shipment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShipmentsApi->update_shipment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** |  |  |
| **update_shipment_request** | [**UpdateShipmentRequest**](UpdateShipmentRequest.md) |  | [optional] |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

