# OpenapiClient::TransferShipmentItemToLocationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original_shipment_number** | **String** |  | [optional] |
| **target_shipment_number** | **String** |  | [optional] |
| **stock_location_id** | **Integer** |  | [optional] |
| **variant_id** | **Integer** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransferShipmentItemToLocationRequest.new(
  original_shipment_number: null,
  target_shipment_number: null,
  stock_location_id: null,
  variant_id: null,
  quantity: null
)
```

