# OpenapiClient::CouponCodeHandler

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **String** | Message returned if the coupon has been applied. | [optional] |
| **error** | **String** | Message returned if there are errors applying the coupon. | [optional] |
| **successful** | **Boolean** |  | [optional] |
| **status_code** | **String** | When applying a coupon code, it can be: &#x60;coupon_code_applied&#x60;, &#x60;coupon_code_unknown_error&#x60;, &#x60;coupon_code_max_usage&#x60;, &#x60;coupon_code_not_eligible&#x60;, &#x60;coupon_code_already_applied&#x60;, &#x60;coupon_code_expired&#x60; or &#x60;coupon_code_not_found&#x60;.  When removing a coupon code, it can be: &#x60;coupon_code_removed&#x60;, &#x60;coupon_code_not_present&#x60;, &#x60;coupon_code_not_found&#x60;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CouponCodeHandler.new(
  success: null,
  error: null,
  successful: null,
  status_code: null
)
```

