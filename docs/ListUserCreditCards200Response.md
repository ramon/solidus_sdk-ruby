# OpenapiClient::ListUserCreditCards200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** |  | [optional] |
| **current_page** | **Integer** |  | [optional] |
| **pages** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **total_count** | **Integer** |  | [optional] |
| **credit_cards** | [**Array&lt;CreditCard&gt;**](CreditCard.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListUserCreditCards200Response.new(
  count: null,
  current_page: null,
  pages: null,
  per_page: null,
  total_count: null,
  credit_cards: null
)
```

