# OpenapiClient::PaymentInputSourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** |  | [optional] |
| **month** | **Integer** |  | [optional] |
| **year** | **Integer** |  | [optional] |
| **verification_value** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **cc_type** | **String** |  | [optional] |
| **gateway_customer_profile_id** | **String** |  | [optional] |
| **gateway_payment_profile_id** | **String** |  | [optional] |
| **last_digits** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **encrypted_data** | **String** |  | [optional] |
| **wallet_payment_source_id** | **Integer** |  | [optional] |
| **address_attributes** | [**AddressInput**](AddressInput.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentInputSourceAttributes.new(
  number: null,
  month: null,
  year: null,
  verification_value: null,
  first_name: null,
  last_name: null,
  cc_type: null,
  gateway_customer_profile_id: null,
  gateway_payment_profile_id: null,
  last_digits: null,
  name: null,
  encrypted_data: null,
  wallet_payment_source_id: null,
  address_attributes: null
)
```

