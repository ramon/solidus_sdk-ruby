=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class PromotionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get promotion
    # Retrieves a promotion.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Promotion]
    def get_promotion(id, opts = {})
      data, _status_code, _headers = get_promotion_with_http_info(id, opts)
      data
    end

    # Get promotion
    # Retrieves a promotion.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Promotion, Integer, Hash)>] Promotion data, response status code and response headers
    def get_promotion_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PromotionsApi.get_promotion ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PromotionsApi.get_promotion"
      end
      # resource path
      local_var_path = '/promotions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Promotion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"PromotionsApi.get_promotion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PromotionsApi#get_promotion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
