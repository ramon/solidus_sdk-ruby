# OpenapiClient::PatchSubscriptionsApiV1SubscriptionsIdRequestSubscriptionAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_items_attributes** | [**Array&lt;SubscriptionLineItem&gt;**](SubscriptionLineItem.md) |  | [optional] |
| **shipping_address_attributes** | **Object** |  | [optional] |
| **billing_address_attributes** | **Object** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PatchSubscriptionsApiV1SubscriptionsIdRequestSubscriptionAllOf.new(
  line_items_attributes: null,
  shipping_address_attributes: null,
  billing_address_attributes: null
)
```

