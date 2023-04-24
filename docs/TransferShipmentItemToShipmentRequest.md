# OpenapiClient::TransferShipmentItemToShipmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original_shipment_number** | **String** |  | [optional] |
| **target_shipment_number** | **String** |  | [optional] |
| **variant_id** | **Integer** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransferShipmentItemToShipmentRequest.new(
  original_shipment_number: null,
  target_shipment_number: null,
  variant_id: null,
  quantity: null
)
```

