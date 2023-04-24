# OpenapiClient::Taxon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **parent_id** | **Integer** |  | [optional] |
| **permalink** | **String** |  | [optional] |
| **pretty_name** | **String** |  | [optional] |
| **taxonomy_id** | **Integer** |  | [optional] |
| **taxons** | [**Array&lt;Taxon&gt;**](Taxon.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Taxon.new(
  id: null,
  name: null,
  parent_id: null,
  permalink: null,
  pretty_name: null,
  taxonomy_id: null,
  taxons: null
)
```

