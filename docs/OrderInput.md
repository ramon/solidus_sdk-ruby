# OpenapiClient::OrderInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **special_instructions** | **String** |  | [optional] |
| **use_billing** | **Boolean** |  | [optional] |
| **bill_address_attributes** | [**AddressInput**](AddressInput.md) |  | [optional] |
| **ship_address_attributes** | [**AddressInput**](AddressInput.md) |  | [optional] |
| **payments_attributes** | [**Array&lt;PaymentInput&gt;**](PaymentInput.md) |  | [optional] |
| **shipments_attributes** | [**Array&lt;ShipmentInput&gt;**](ShipmentInput.md) |  | [optional] |
| **line_items_attributes** | [**Array&lt;LineItemInput&gt;**](LineItemInput.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrderInput.new(
  email: null,
  special_instructions: null,
  use_billing: null,
  bill_address_attributes: null,
  ship_address_attributes: null,
  payments_attributes: null,
  shipments_attributes: null,
  line_items_attributes: null
)
```

