# OpenapiClient::PaymentInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** |  | [optional] |
| **payment_method_id** | **Integer** |  | [optional] |
| **source_attributes** | [**PaymentInputSourceAttributes**](PaymentInputSourceAttributes.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentInput.new(
  amount: null,
  payment_method_id: null,
  source_attributes: null
)
```

