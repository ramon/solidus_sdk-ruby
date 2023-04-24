# OpenapiClient::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_on** | **String** |  | [optional] |
| **classifications** | [**Array&lt;Classification&gt;**](Classification.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **display_price** | **String** |  | [optional] |
| **has_variants** | **Boolean** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **master** | [**Variant**](Variant.md) |  | [optional] |
| **meta_description** | **String** |  | [optional] |
| **meta_keywords** | **String** |  | [optional] |
| **meta_title** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **option_types** | [**Array&lt;OptionType&gt;**](OptionType.md) |  | [optional] |
| **price** | **String** |  | [optional] |
| **product_properties** | [**Array&lt;ProductProperty&gt;**](ProductProperty.md) |  | [optional] |
| **shipping_category_id** | **Integer** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **taxon_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **total_on_hand** | **Integer** |  | [optional] |
| **variants** | [**Array&lt;Variant&gt;**](Variant.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Product.new(
  available_on: null,
  classifications: null,
  description: null,
  display_price: null,
  has_variants: null,
  id: null,
  master: null,
  meta_description: null,
  meta_keywords: null,
  meta_title: null,
  name: null,
  option_types: null,
  price: null,
  product_properties: null,
  shipping_category_id: null,
  slug: null,
  taxon_ids: null,
  total_on_hand: null,
  variants: null
)
```

