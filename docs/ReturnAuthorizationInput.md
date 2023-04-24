# OpenapiClient::ReturnAuthorizationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memo** | **String** |  | [optional] |
| **stock_location_id** | **Integer** |  | [optional] |
| **return_reason_id** | **Integer** |  | [optional] |
| **return_items_attributes** | [**Array&lt;ReturnAuthorizationInputReturnItemsAttributesInner&gt;**](ReturnAuthorizationInputReturnItemsAttributesInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReturnAuthorizationInput.new(
  memo: null,
  stock_location_id: null,
  return_reason_id: null,
  return_items_attributes: null
)
```

