# OpenapiClient::ListCurrentUserStoreCreditEvents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** |  | [optional] |
| **current_page** | **Integer** |  | [optional] |
| **pages** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **total_count** | **Integer** |  | [optional] |
| **store_credit_events** | [**Array&lt;StoreCreditEvent&gt;**](StoreCreditEvent.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListCurrentUserStoreCreditEvents200Response.new(
  count: null,
  current_page: null,
  pages: null,
  per_page: null,
  total_count: null,
  store_credit_events: null
)
```

