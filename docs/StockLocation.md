# OpenapiClient::StockLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **address1** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country** | [**Country**](Country.md) |  | [optional] |
| **country_id** | **Integer** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **state** | [**State**](State.md) |  | [optional] |
| **state_id** | **Integer** |  | [optional] |
| **state_name** | **String** |  | [optional] |
| **zipcode** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StockLocation.new(
  active: null,
  address1: null,
  address2: null,
  city: null,
  country: null,
  country_id: null,
  id: null,
  name: null,
  phone: null,
  state: null,
  state_id: null,
  state_name: null,
  zipcode: null
)
```

