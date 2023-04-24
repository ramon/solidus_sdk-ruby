# OpenapiClient::AddressInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **address1** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country_id** | **Integer** |  | [optional] |
| **state_id** | **Integer** |  | [optional] |
| **zipcode** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **state_name** | **String** |  | [optional] |
| **country_iso** | **String** |  | [optional] |
| **alternative_phone** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **country** | [**AddressInputCountry**](AddressInputCountry.md) |  | [optional] |
| **state** | [**AddressInputState**](AddressInputState.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressInput.new(
  id: null,
  name: null,
  address1: null,
  address2: null,
  city: null,
  country_id: null,
  state_id: null,
  zipcode: null,
  phone: null,
  state_name: null,
  country_iso: null,
  alternative_phone: null,
  company: null,
  country: null,
  state: null
)
```

