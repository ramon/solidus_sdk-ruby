=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class CouponCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create order coupon code
    # Creates a coupon code for an order.  To perform this operation the request should be made as the order's owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
    # @param order_number [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [CouponCodeInput] :coupon_code_input 
    # @return [CouponCodeHandler]
    def create_order_coupon_code(order_number, opts = {})
      data, _status_code, _headers = create_order_coupon_code_with_http_info(order_number, opts)
      data
    end

    # Create order coupon code
    # Creates a coupon code for an order.  To perform this operation the request should be made as the order&#39;s owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
    # @param order_number [String] The order number
    # @param [Hash] opts the optional parameters
    # @option opts [CouponCodeInput] :coupon_code_input 
    # @return [Array<(CouponCodeHandler, Integer, Hash)>] CouponCodeHandler data, response status code and response headers
    def create_order_coupon_code_with_http_info(order_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CouponCodesApi.create_order_coupon_code ...'
      end
      # verify the required parameter 'order_number' is set
      if @api_client.config.client_side_validation && order_number.nil?
        fail ArgumentError, "Missing the required parameter 'order_number' when calling CouponCodesApi.create_order_coupon_code"
      end
      # resource path
      local_var_path = '/orders/{order_number}/coupon_codes'.sub('{' + 'order_number' + '}', CGI.escape(order_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'coupon_code_input'])

      # return_type
      return_type = opts[:debug_return_type] || 'CouponCodeHandler'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"CouponCodesApi.create_order_coupon_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponCodesApi#create_order_coupon_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete order coupon code
    # Deletes an order's coupon code.  To perform this operation the request should be made as the order's owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
    # @param order_number [String] The order number
    # @param id [String] This is the coupon code
    # @param [Hash] opts the optional parameters
    # @return [CouponCodeHandler]
    def delete_order_coupon_code(order_number, id, opts = {})
      data, _status_code, _headers = delete_order_coupon_code_with_http_info(order_number, id, opts)
      data
    end

    # Delete order coupon code
    # Deletes an order&#39;s coupon code.  To perform this operation the request should be made as the order&#39;s owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
    # @param order_number [String] The order number
    # @param id [String] This is the coupon code
    # @param [Hash] opts the optional parameters
    # @return [Array<(CouponCodeHandler, Integer, Hash)>] CouponCodeHandler data, response status code and response headers
    def delete_order_coupon_code_with_http_info(order_number, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CouponCodesApi.delete_order_coupon_code ...'
      end
      # verify the required parameter 'order_number' is set
      if @api_client.config.client_side_validation && order_number.nil?
        fail ArgumentError, "Missing the required parameter 'order_number' when calling CouponCodesApi.delete_order_coupon_code"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CouponCodesApi.delete_order_coupon_code"
      end
      # resource path
      local_var_path = '/orders/{order_number}/coupon_codes/{id}'.sub('{' + 'order_number' + '}', CGI.escape(order_number.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CouponCodeHandler'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"CouponCodesApi.delete_order_coupon_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponCodesApi#delete_order_coupon_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
