# OpenapiClient::PatchSubscriptionsApiV1SubscriptionsIdRequestSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_items_attributes** | [**Array&lt;SubscriptionLineItem&gt;**](SubscriptionLineItem.md) |  | [optional] |
| **shipping_address_attributes** | **Object** |  | [optional] |
| **billing_address_attributes** | **Object** |  | [optional] |
| **actionable_date** | **Date** |  |  |
| **interval_units** | **String** |  |  |
| **interval_length** | **String** |  |  |
| **end_date** | **Date** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PatchSubscriptionsApiV1SubscriptionsIdRequestSubscription.new(
  line_items_attributes: null,
  shipping_address_attributes: null,
  billing_address_attributes: null,
  actionable_date: null,
  interval_units: null,
  interval_length: null,
  end_date: null
)
```

