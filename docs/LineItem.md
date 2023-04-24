# OpenapiClient::LineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustments** | [**Array&lt;Adjustment&gt;**](Adjustment.md) |  | [optional] |
| **display_amount** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **price** | **String** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **single_display_amount** | **String** |  | [optional] |
| **total** | **String** |  | [optional] |
| **variant** | [**Variant**](Variant.md) |  | [optional] |
| **variant_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LineItem.new(
  adjustments: null,
  display_amount: null,
  id: null,
  price: null,
  quantity: null,
  single_display_amount: null,
  total: null,
  variant: null,
  variant_id: null
)
```

