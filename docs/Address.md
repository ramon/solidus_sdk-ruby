# OpenapiClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address1** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **alternative_phone** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **country** | [**Country**](Country.md) |  | [optional] |
| **country_id** | **Integer** |  | [optional] |
| **country_iso** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **state** | [**State**](State.md) |  | [optional] |
| **state_id** | **Integer** |  | [optional] |
| **state_name** | **String** |  | [optional] |
| **state_text** | **String** |  | [optional] |
| **zipcode** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Address.new(
  address1: null,
  address2: null,
  alternative_phone: null,
  city: null,
  company: null,
  country: null,
  country_id: null,
  country_iso: null,
  id: null,
  name: null,
  phone: null,
  state: null,
  state_id: null,
  state_name: null,
  state_text: null,
  zipcode: null
)
```

