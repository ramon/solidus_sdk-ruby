=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class LineItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create checkout line item
    # Create a line item in an checkout not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  It is not possible to add a line item to a completed order.
    # @param checkout_id [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
    # @return [LineItem]
    def create_checkout_line_item(checkout_id, opts = {})
      data, _status_code, _headers = create_checkout_line_item_with_http_info(checkout_id, opts)
      data
    end

    # Create checkout line item
    # Create a line item in an checkout not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  It is not possible to add a line item to a completed order.
    # @param checkout_id [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
    # @return [Array<(LineItem, Integer, Hash)>] LineItem data, response status code and response headers
    def create_checkout_line_item_with_http_info(checkout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LineItemsApi.create_checkout_line_item ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling LineItemsApi.create_checkout_line_item"
      end
      # resource path
      local_var_path = '/checkouts/{checkout_id}/line_items'.sub('{' + 'checkout_id' + '}', CGI.escape(checkout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_order_line_item_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'LineItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"LineItemsApi.create_checkout_line_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LineItemsApi#create_checkout_line_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create order line item
    # Create a line item in an order not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
    # @param order_number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
    # @return [LineItem]
    def create_order_line_item(order_number, opts = {})
      data, _status_code, _headers = create_order_line_item_with_http_info(order_number, opts)
      data
    end

    # Create order line item
    # Create a line item in an order not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
    # @param order_number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
    # @return [Array<(LineItem, Integer, Hash)>] LineItem data, response status code and response headers
    def create_order_line_item_with_http_info(order_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LineItemsApi.create_order_line_item ...'
      end
      # verify the required parameter 'order_number' is set
      if @api_client.config.client_side_validation && order_number.nil?
        fail ArgumentError, "Missing the required parameter 'order_number' when calling LineItemsApi.create_order_line_item"
      end
      # resource path
      local_var_path = '/orders/{order_number}/line_items'.sub('{' + 'order_number' + '}', CGI.escape(order_number.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_order_line_item_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'LineItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"LineItemsApi.create_order_line_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LineItemsApi#create_order_line_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete checkout line item
    # Deletes a checkout's line item.
    # @param checkout_id [String] The order number
    # @param id [String] The id of the line item to update
    # @param [Hash] opts the optional parameters
    # @return [LineItem]
    def delete_checkout_line_item(checkout_id, id, opts = {})
      data, _status_code, _headers = delete_checkout_line_item_with_http_info(checkout_id, id, opts)
      data
    end

    # Delete checkout line item
    # Deletes a checkout&#39;s line item.
    # @param checkout_id [String] The order number
    # @param id [String] The id of the line item to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(LineItem, Integer, Hash)>] LineItem data, response status code and response headers
    def delete_checkout_line_item_with_http_info(checkout_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LineItemsApi.delete_checkout_line_item ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling LineItemsApi.delete_checkout_line_item"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LineItemsApi.delete_checkout_line_item"
      end
      # resource path
      local_var_path = '/checkouts/{checkout_id}/line_items/{id}'.sub('{' + 'checkout_id' + '}', CGI.escape(checkout_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LineItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"LineItemsApi.delete_checkout_line_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LineItemsApi#delete_checkout_line_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete order line item
    # Deletes an order's line item.
    # @param order_number [String] The order number
    # @param id [String] The id of the line item to update
    # @param [Hash] opts the optional parameters
    # @return [LineItem]
    def delete_order_line_item(order_number, id, opts = {})
      data, _status_code, _headers = delete_order_line_item_with_http_info(order_number, id, opts)
      data
    end

    # Delete order line item
    # Deletes an order&#39;s line item.
    # @param order_number [String] The order number
    # @param id [String] The id of the line item to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(LineItem, Integer, Hash)>] LineItem data, response status code and response headers
    def delete_order_line_item_with_http_info(order_number, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LineItemsApi.delete_order_line_item ...'
      end
      # verify the required parameter 'order_number' is set
      if @api_client.config.client_side_validation && order_number.nil?
        fail ArgumentError, "Missing the required parameter 'order_number' when calling LineItemsApi.delete_order_line_item"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LineItemsApi.delete_order_line_item"
      end
      # resource path
      local_var_path = '/orders/{order_number}/line_items/{id}'.sub('{' + 'order_number' + '}', CGI.escape(order_number.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LineItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"LineItemsApi.delete_order_line_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LineItemsApi#delete_order_line_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update checkout line item
    # Update line item's information in an checkout not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  It is not possible to add a line item to a completed order.
    # @param checkout_id [String] The order number
    # @param id [String] The id of the line item to update
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
    # @return [LineItem]
    def update_checkout_line_item(checkout_id, id, opts = {})
      data, _status_code, _headers = update_checkout_line_item_with_http_info(checkout_id, id, opts)
      data
    end

    # Update checkout line item
    # Update line item&#39;s information in an checkout not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  It is not possible to add a line item to a completed order.
    # @param checkout_id [String] The order number
    # @param id [String] The id of the line item to update
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
    # @return [Array<(LineItem, Integer, Hash)>] LineItem data, response status code and response headers
    def update_checkout_line_item_with_http_info(checkout_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LineItemsApi.update_checkout_line_item ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling LineItemsApi.update_checkout_line_item"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LineItemsApi.update_checkout_line_item"
      end
      # resource path
      local_var_path = '/checkouts/{checkout_id}/line_items/{id}'.sub('{' + 'checkout_id' + '}', CGI.escape(checkout_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_order_line_item_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'LineItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"LineItemsApi.update_checkout_line_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LineItemsApi#update_checkout_line_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update order line item
    # Update line item's information in an order not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
    # @param order_number [String] The order number
    # @param id [String] The id of the line item to update
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
    # @return [LineItem]
    def update_order_line_item(order_number, id, opts = {})
      data, _status_code, _headers = update_order_line_item_with_http_info(order_number, id, opts)
      data
    end

    # Update order line item
    # Update line item&#39;s information in an order not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
    # @param order_number [String] The order number
    # @param id [String] The id of the line item to update
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
    # @return [Array<(LineItem, Integer, Hash)>] LineItem data, response status code and response headers
    def update_order_line_item_with_http_info(order_number, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LineItemsApi.update_order_line_item ...'
      end
      # verify the required parameter 'order_number' is set
      if @api_client.config.client_side_validation && order_number.nil?
        fail ArgumentError, "Missing the required parameter 'order_number' when calling LineItemsApi.update_order_line_item"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LineItemsApi.update_order_line_item"
      end
      # resource path
      local_var_path = '/orders/{order_number}/line_items/{id}'.sub('{' + 'order_number' + '}', CGI.escape(order_number.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_order_line_item_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'LineItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"LineItemsApi.update_order_line_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LineItemsApi#update_order_line_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
