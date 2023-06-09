=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class CheckoutsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Advance checkout
    # Advances a checkout to the furthest possible state.
    # @param checkout_id [String] The order number
    # @param [Hash] opts the optional parameters
    # @return [OrderBig]
    def advance_checkout(checkout_id, opts = {})
      data, _status_code, _headers = advance_checkout_with_http_info(checkout_id, opts)
      data
    end

    # Advance checkout
    # Advances a checkout to the furthest possible state.
    # @param checkout_id [String] The order number
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderBig, Integer, Hash)>] OrderBig data, response status code and response headers
    def advance_checkout_with_http_info(checkout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckoutsApi.advance_checkout ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling CheckoutsApi.advance_checkout"
      end
      # resource path
      local_var_path = '/checkouts/{checkout_id}/advance'.sub('{' + 'checkout_id' + '}', CGI.escape(checkout_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OrderBig'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"CheckoutsApi.advance_checkout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#advance_checkout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Complete checkout
    # Completes a checkout.
    # @param checkout_id [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [CompleteCheckoutRequest] :complete_checkout_request 
    # @return [OrderBig]
    def complete_checkout(checkout_id, opts = {})
      data, _status_code, _headers = complete_checkout_with_http_info(checkout_id, opts)
      data
    end

    # Complete checkout
    # Completes a checkout.
    # @param checkout_id [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [CompleteCheckoutRequest] :complete_checkout_request 
    # @return [Array<(OrderBig, Integer, Hash)>] OrderBig data, response status code and response headers
    def complete_checkout_with_http_info(checkout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckoutsApi.complete_checkout ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling CheckoutsApi.complete_checkout"
      end
      # resource path
      local_var_path = '/checkouts/{checkout_id}/complete'.sub('{' + 'checkout_id' + '}', CGI.escape(checkout_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'complete_checkout_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OrderBig'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"CheckoutsApi.complete_checkout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#complete_checkout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Transition checkout
    # Transitions a checkout to the next state.
    # @param checkout_id [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [CompleteCheckoutRequest] :complete_checkout_request 
    # @return [OrderBig]
    def transition_checkout(checkout_id, opts = {})
      data, _status_code, _headers = transition_checkout_with_http_info(checkout_id, opts)
      data
    end

    # Transition checkout
    # Transitions a checkout to the next state.
    # @param checkout_id [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [CompleteCheckoutRequest] :complete_checkout_request 
    # @return [Array<(OrderBig, Integer, Hash)>] OrderBig data, response status code and response headers
    def transition_checkout_with_http_info(checkout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckoutsApi.transition_checkout ...'
      end
      # verify the required parameter 'checkout_id' is set
      if @api_client.config.client_side_validation && checkout_id.nil?
        fail ArgumentError, "Missing the required parameter 'checkout_id' when calling CheckoutsApi.transition_checkout"
      end
      # resource path
      local_var_path = '/checkouts/{checkout_id}/next'.sub('{' + 'checkout_id' + '}', CGI.escape(checkout_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'complete_checkout_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OrderBig'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"CheckoutsApi.transition_checkout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#transition_checkout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update checkout
    # Updates a checkout and moves the order to the next checkout step. A request with an empty body is legit and only tries to move the order to the next step.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  **Note:** In addition to the order update, this action always attempts to perform an order state machine transition which results in a `422` response if it cannot be transitioned.
    # @param id [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOrderRequest] :update_order_request 
    # @return [OrderBig]
    def update_checkout(id, opts = {})
      data, _status_code, _headers = update_checkout_with_http_info(id, opts)
      data
    end

    # Update checkout
    # Updates a checkout and moves the order to the next checkout step. A request with an empty body is legit and only tries to move the order to the next step.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  **Note:** In addition to the order update, this action always attempts to perform an order state machine transition which results in a &#x60;422&#x60; response if it cannot be transitioned.
    # @param id [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOrderRequest] :update_order_request 
    # @return [Array<(OrderBig, Integer, Hash)>] OrderBig data, response status code and response headers
    def update_checkout_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CheckoutsApi.update_checkout ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CheckoutsApi.update_checkout"
      end
      # resource path
      local_var_path = '/checkouts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_order_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OrderBig'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"CheckoutsApi.update_checkout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#update_checkout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
