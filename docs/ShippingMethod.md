# OpenapiClient::ShippingMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **shipping_categories** | [**Array&lt;ShippingCategory&gt;**](ShippingCategory.md) |  | [optional] |
| **zones** | [**Array&lt;Zone&gt;**](Zone.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ShippingMethod.new(
  code: null,
  id: null,
  name: null,
  shipping_categories: null,
  zones: null
)
```

