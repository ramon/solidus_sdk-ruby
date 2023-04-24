# OpenapiClient::OrderBig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_tax_total** | **String** |  | [optional] |
| **adjustment_total** | **String** |  | [optional] |
| **adjustments** | [**Array&lt;Adjustment&gt;**](Adjustment.md) |  | [optional] |
| **bill_address** | [**Address**](Address.md) |  | [optional] |
| **canceler_id** | **Integer** |  | [optional] |
| **channel** | **String** |  | [optional] |
| **checkout_steps** | **Array&lt;String&gt;** |  | [optional] |
| **completed_at** | **String** |  | [optional] |
| **covered_by_store_credit** | **Boolean** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **credit_cards** | [**Array&lt;CreditCard&gt;**](CreditCard.md) |  | [optional] |
| **currency** | **String** |  | [optional] |
| **display_additional_tax_total** | **String** |  | [optional] |
| **display_included_tax_total** | **String** |  | [optional] |
| **display_item_total** | **String** |  | [optional] |
| **display_order_total_after_store_credit** | **String** |  | [optional] |
| **display_ship_total** | **String** |  | [optional] |
| **display_store_credit_remaining_after_capture** | **String** |  | [optional] |
| **display_tax_total** | **String** |  | [optional] |
| **display_total** | **String** |  | [optional] |
| **display_total_applicable_store_credit** | **String** |  | [optional] |
| **display_total_available_store_credit** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **included_tax_total** | **String** |  | [optional] |
| **item_total** | **String** |  | [optional] |
| **line_items** | [**Array&lt;LineItem&gt;**](LineItem.md) |  | [optional] |
| **number** | **String** |  | [optional] |
| **order_total_after_store_credit** | **String** |  | [optional] |
| **payment_methods** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) |  | [optional] |
| **payment_state** | **String** |  | [optional] |
| **payment_total** | **String** |  | [optional] |
| **payments** | [**Array&lt;Payment&gt;**](Payment.md) |  | [optional] |
| **permissions** | [**OrderPermissions**](OrderPermissions.md) |  | [optional] |
| **ship_address** | [**Address**](Address.md) |  | [optional] |
| **ship_total** | **String** |  | [optional] |
| **shipment_state** | **String** |  | [optional] |
| **shipments** | [**Array&lt;Shipment&gt;**](Shipment.md) |  | [optional] |
| **special_instructions** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **tax_total** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **total** | **String** |  | [optional] |
| **total_applicable_store_credit** | **String** |  | [optional] |
| **total_quantity** | **Integer** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrderBig.new(
  additional_tax_total: null,
  adjustment_total: null,
  adjustments: null,
  bill_address: null,
  canceler_id: null,
  channel: null,
  checkout_steps: null,
  completed_at: null,
  covered_by_store_credit: null,
  created_at: null,
  credit_cards: null,
  currency: null,
  display_additional_tax_total: null,
  display_included_tax_total: null,
  display_item_total: null,
  display_order_total_after_store_credit: null,
  display_ship_total: null,
  display_store_credit_remaining_after_capture: null,
  display_tax_total: null,
  display_total: null,
  display_total_applicable_store_credit: null,
  display_total_available_store_credit: null,
  email: null,
  id: null,
  included_tax_total: null,
  item_total: null,
  line_items: null,
  number: null,
  order_total_after_store_credit: null,
  payment_methods: null,
  payment_state: null,
  payment_total: null,
  payments: null,
  permissions: null,
  ship_address: null,
  ship_total: null,
  shipment_state: null,
  shipments: null,
  special_instructions: null,
  state: null,
  tax_total: null,
  token: null,
  total: null,
  total_applicable_store_credit: null,
  total_quantity: null,
  updated_at: null,
  user_id: null
)
```

