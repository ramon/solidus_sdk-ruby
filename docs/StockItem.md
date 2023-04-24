# OpenapiClient::StockItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backorderable** | **Boolean** |  | [optional] |
| **count_on_hand** | **Integer** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **stock_location_id** | **Integer** |  | [optional] |
| **variant** | [**Variant**](Variant.md) |  | [optional] |
| **variant_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StockItem.new(
  backorderable: null,
  count_on_hand: null,
  id: null,
  stock_location_id: null,
  variant: null,
  variant_id: null
)
```

