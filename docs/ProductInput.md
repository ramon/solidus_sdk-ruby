# OpenapiClient::ProductInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **available_on** | **String** |  | [optional] |
| **meta_description** | **String** |  | [optional] |
| **meta_keywords** | **String** |  | [optional] |
| **price** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **deleted_at** | **String** |  | [optional] |
| **option_values_hash** | **Object** |  | [optional] |
| **weight** | **String** |  | [optional] |
| **height** | **String** |  | [optional] |
| **width** | **String** |  | [optional] |
| **depth** | **String** |  | [optional] |
| **shipping_category_id** | **Integer** |  | [optional] |
| **tax_category_id** | **Integer** |  | [optional] |
| **taxon_ids** | **String** | Comma separated list of taxon ids. Eg. \&quot;1,2\&quot; | [optional] |
| **option_type_ids** | **String** | Comma separated list of option type ids ids. Eg. \&quot;1,2\&quot; | [optional] |
| **cost_currency** | **String** |  | [optional] |
| **cost_price** | **String** |  | [optional] |
| **product_properties_attributes** | [**Array&lt;ProductPropertyInput&gt;**](ProductPropertyInput.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ProductInput.new(
  name: null,
  description: null,
  available_on: null,
  meta_description: null,
  meta_keywords: null,
  price: null,
  sku: null,
  deleted_at: null,
  option_values_hash: null,
  weight: null,
  height: null,
  width: null,
  depth: null,
  shipping_category_id: null,
  tax_category_id: null,
  taxon_ids: null,
  option_type_ids: null,
  cost_currency: null,
  cost_price: null,
  product_properties_attributes: null
)
```

