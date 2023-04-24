# OpenapiClient::CreditCardUpdateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** |  | [optional] |
| **year** | **String** |  | [optional] |
| **expirty** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **address_attributes** | [**AddressInput**](AddressInput.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreditCardUpdateInput.new(
  month: null,
  year: null,
  expirty: null,
  first_name: null,
  last_name: null,
  name: null,
  address_attributes: null
)
```

