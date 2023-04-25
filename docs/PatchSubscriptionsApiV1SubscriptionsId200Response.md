# OpenapiClient::PatchSubscriptionsApiV1SubscriptionsId200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_items** | [**Array&lt;SubscriptionLineItemOutput&gt;**](SubscriptionLineItemOutput.md) |  | [optional] |
| **shipping_address** | **Object** |  | [optional] |
| **billing_address** | **Object** |  | [optional] |
| **actionable_date** | **Date** |  |  |
| **interval_units** | **String** |  |  |
| **interval_length** | **String** |  |  |
| **end_date** | **Date** |  |  |
| **id** | **Integer** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **state** | **String** |  |  |
| **user_id** | **Integer** |  |  |
| **processing_state** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PatchSubscriptionsApiV1SubscriptionsId200Response.new(
  line_items: null,
  shipping_address: null,
  billing_address: null,
  actionable_date: null,
  interval_units: null,
  interval_length: null,
  end_date: null,
  id: null,
  created_at: null,
  updated_at: null,
  state: null,
  user_id: null,
  processing_state: null
)
```

