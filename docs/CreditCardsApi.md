# OpenapiClient::CreditCardsApi

All URIs are relative to *https://example.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_user_credit_cards**](CreditCardsApi.md#list_user_credit_cards) | **GET** /users/{user_id}/credit_cards | List user credit cards |
| [**update_credit_card**](CreditCardsApi.md#update_credit_card) | **PATCH** /credit_cards/{id} | Update credit card |


## list_user_credit_cards

> <ListUserCreditCards200Response> list_user_credit_cards(user_id, opts)

List user credit cards

Lists a user's credit cards.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CreditCardsApi.new
user_id = 'user_id_example' # String | 
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  q: TODO # Object | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
}

begin
  # List user credit cards
  result = api_instance.list_user_credit_cards(user_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditCardsApi->list_user_credit_cards: #{e}"
end
```

#### Using the list_user_credit_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUserCreditCards200Response>, Integer, Hash)> list_user_credit_cards_with_http_info(user_id, opts)

```ruby
begin
  # List user credit cards
  data, status_code, headers = api_instance.list_user_credit_cards_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUserCreditCards200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditCardsApi->list_user_credit_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 25] |
| **q** | [**Object**](.md) | Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/). | [optional] |

### Return type

[**ListUserCreditCards200Response**](ListUserCreditCards200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_credit_card

> <CreditCard> update_credit_card(id, opts)

Update credit card

Updates a credit card.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: api-key
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CreditCardsApi.new
id = 'id_example' # String | 
opts = {
  credit_card_update_input: OpenapiClient::CreditCardUpdateInput.new # CreditCardUpdateInput | 
}

begin
  # Update credit card
  result = api_instance.update_credit_card(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditCardsApi->update_credit_card: #{e}"
end
```

#### Using the update_credit_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditCard>, Integer, Hash)> update_credit_card_with_http_info(id, opts)

```ruby
begin
  # Update credit card
  data, status_code, headers = api_instance.update_credit_card_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditCard>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditCardsApi->update_credit_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **credit_card_update_input** | [**CreditCardUpdateInput**](CreditCardUpdateInput.md) |  | [optional] |

### Return type

[**CreditCard**](CreditCard.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

