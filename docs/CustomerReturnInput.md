# OpenapiClient::CustomerReturnInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** |  | [optional] |
| **stock_location_id** | **Integer** |  |  |
| **return_items_attributes** | [**Array&lt;CustomerReturnInputReturnItemsAttributesInner&gt;**](CustomerReturnInputReturnItemsAttributesInner.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomerReturnInput.new(
  number: null,
  stock_location_id: null,
  return_items_attributes: null
)
```

