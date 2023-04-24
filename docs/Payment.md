# OpenapiClient::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** |  | [optional] |
| **avs_response** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **display_amount** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] |
| **payment_method_id** | **Integer** |  | [optional] |
| **source** | [**PaymentSource**](PaymentSource.md) |  | [optional] |
| **source_id** | **Integer** |  | [optional] |
| **source_type** | **Integer** |  | [optional] |
| **state** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Payment.new(
  amount: null,
  avs_response: null,
  created_at: null,
  display_amount: null,
  id: null,
  payment_method: null,
  payment_method_id: null,
  source: null,
  source_id: null,
  source_type: null,
  state: null,
  updated_at: null
)
```

