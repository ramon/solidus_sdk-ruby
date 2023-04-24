# OpenapiClient::VariantInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | **String** |  |  |
| **cost_price** | **String** |  | [optional] |
| **position** | **Integer** |  | [optional] |
| **track_inventory** | **Boolean** |  | [optional] |
| **product_id** | **Integer** |  | [optional] |
| **shipping_category_id** | **Integer** |  | [optional] |
| **tax_category_id** | **Integer** |  | [optional] |
| **weight** | **String** |  | [optional] |
| **height** | **String** |  | [optional] |
| **width** | **String** |  | [optional] |
| **depth** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **cost_currency** | **String** |  | [optional] |
| **option_value_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **option_values_attributes** | [**Array&lt;OptionValueInput&gt;**](OptionValueInput.md) |  | [optional] |
| **options** | [**VariantInputOptions**](VariantInputOptions.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::VariantInput.new(
  price: null,
  cost_price: null,
  position: null,
  track_inventory: null,
  product_id: null,
  shipping_category_id: null,
  tax_category_id: null,
  weight: null,
  height: null,
  width: null,
  depth: null,
  sku: null,
  cost_currency: null,
  option_value_ids: null,
  option_values_attributes: null,
  options: null
)
```

