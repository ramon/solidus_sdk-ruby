# OpenapiClient::Shipment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustments** | [**Array&lt;Adjustment&gt;**](Adjustment.md) |  | [optional] |
| **cost** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **manifest** | **Array&lt;Array&gt;** |  | [optional] |
| **number** | **String** |  | [optional] |
| **order_id** | **String** |  | [optional] |
| **selected_shipping_rate** | [**ShippingRate**](ShippingRate.md) |  | [optional] |
| **shipped_at** | **String** |  | [optional] |
| **shipping_methods** | [**Array&lt;ShippingMethod&gt;**](ShippingMethod.md) |  | [optional] |
| **shipping_rates** | [**Array&lt;ShippingRate&gt;**](ShippingRate.md) |  | [optional] |
| **state** | **String** |  | [optional] |
| **stock_location_name** | **String** |  | [optional] |
| **tracking** | **String** |  | [optional] |
| **tracking_url** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Shipment.new(
  adjustments: null,
  cost: null,
  id: null,
  manifest: null,
  number: null,
  order_id: null,
  selected_shipping_rate: null,
  shipped_at: null,
  shipping_methods: null,
  shipping_rates: null,
  state: null,
  stock_location_name: null,
  tracking: null,
  tracking_url: null
)
```

