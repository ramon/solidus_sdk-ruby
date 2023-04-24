# OpenapiClient::UserInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** |  | [optional] |
| **password_confirmation** | **String** |  | [optional] |
| **bill_address_attributes** | [**AddressInput**](AddressInput.md) |  | [optional] |
| **ship_address_attributes** | [**AddressInput**](AddressInput.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UserInput.new(
  password: null,
  password_confirmation: null,
  bill_address_attributes: null,
  ship_address_attributes: null
)
```

