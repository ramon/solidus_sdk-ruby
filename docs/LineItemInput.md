# OpenapiClient::LineItemInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | Passing &#x60;0&#x60;, the line item will be removed. When omitted creating a line item, quantity will be &#x60;1&#x60;. | [optional] |
| **options** | **Object** | This field can be used to pass custom line item attributes. When used, it will force a new price calculation, unless &#x60;price&#x60; is one of the options. | [optional] |
| **id** | **Integer** | Required when updating existing line items, only when not already present in the Path Parameters. | [optional] |
| **variant_id** | **Integer** | Required for new line items only. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LineItemInput.new(
  quantity: null,
  options: null,
  id: null,
  variant_id: null
)
```

