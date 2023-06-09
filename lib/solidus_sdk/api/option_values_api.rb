=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class OptionValuesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create option type value
    # Creates an option value for a type.  Only users with the `create` permission on `Spree::OptionValue` can perform this action.
    # @param option_type_id [String] The ID of the Spree::OptionType
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOptionValueRequest] :update_option_value_request 
    # @return [OptionValue]
    def create_option_type_value(option_type_id, opts = {})
      data, _status_code, _headers = create_option_type_value_with_http_info(option_type_id, opts)
      data
    end

    # Create option type value
    # Creates an option value for a type.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::OptionValue&#x60; can perform this action.
    # @param option_type_id [String] The ID of the Spree::OptionType
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOptionValueRequest] :update_option_value_request 
    # @return [Array<(OptionValue, Integer, Hash)>] OptionValue data, response status code and response headers
    def create_option_type_value_with_http_info(option_type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OptionValuesApi.create_option_type_value ...'
      end
      # verify the required parameter 'option_type_id' is set
      if @api_client.config.client_side_validation && option_type_id.nil?
        fail ArgumentError, "Missing the required parameter 'option_type_id' when calling OptionValuesApi.create_option_type_value"
      end
      # resource path
      local_var_path = '/option_types/{option_type_id}/option_values'.sub('{' + 'option_type_id' + '}', CGI.escape(option_type_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_option_value_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OptionValue'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"OptionValuesApi.create_option_type_value",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionValuesApi#create_option_type_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete option value
    # Deletes an option value.
    # @param id [String] The ID of the Spree::OptionValue
    # @param [Hash] opts the optional parameters
    # @return [OptionValue]
    def delete_option_value(id, opts = {})
      data, _status_code, _headers = delete_option_value_with_http_info(id, opts)
      data
    end

    # Delete option value
    # Deletes an option value.
    # @param id [String] The ID of the Spree::OptionValue
    # @param [Hash] opts the optional parameters
    # @return [Array<(OptionValue, Integer, Hash)>] OptionValue data, response status code and response headers
    def delete_option_value_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OptionValuesApi.delete_option_value ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OptionValuesApi.delete_option_value"
      end
      # resource path
      local_var_path = '/option_values/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'OptionValue'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"OptionValuesApi.delete_option_value",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionValuesApi#delete_option_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get option value
    # Retrieves an option value.
    # @param id [String] The ID of the Spree::OptionValue
    # @param [Hash] opts the optional parameters
    # @return [OptionValue]
    def get_option_value(id, opts = {})
      data, _status_code, _headers = get_option_value_with_http_info(id, opts)
      data
    end

    # Get option value
    # Retrieves an option value.
    # @param id [String] The ID of the Spree::OptionValue
    # @param [Hash] opts the optional parameters
    # @return [Array<(OptionValue, Integer, Hash)>] OptionValue data, response status code and response headers
    def get_option_value_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OptionValuesApi.get_option_value ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OptionValuesApi.get_option_value"
      end
      # resource path
      local_var_path = '/option_values/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'OptionValue'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"OptionValuesApi.get_option_value",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionValuesApi#get_option_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List option type values
    # Retrieves an option type's option values.
    # @param option_type_id [String] The ID of the Spree::OptionType
    # @param [Hash] opts the optional parameters
    # @return [Array<OptionValue>]
    def list_option_type_values(option_type_id, opts = {})
      data, _status_code, _headers = list_option_type_values_with_http_info(option_type_id, opts)
      data
    end

    # List option type values
    # Retrieves an option type&#39;s option values.
    # @param option_type_id [String] The ID of the Spree::OptionType
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<OptionValue>, Integer, Hash)>] Array<OptionValue> data, response status code and response headers
    def list_option_type_values_with_http_info(option_type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OptionValuesApi.list_option_type_values ...'
      end
      # verify the required parameter 'option_type_id' is set
      if @api_client.config.client_side_validation && option_type_id.nil?
        fail ArgumentError, "Missing the required parameter 'option_type_id' when calling OptionValuesApi.list_option_type_values"
      end
      # resource path
      local_var_path = '/option_types/{option_type_id}/option_values'.sub('{' + 'option_type_id' + '}', CGI.escape(option_type_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<OptionValue>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"OptionValuesApi.list_option_type_values",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionValuesApi#list_option_type_values\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List option values
    # Lists the system's option values.
    # @param [Hash] opts the optional parameters
    # @return [Array<OptionValue>]
    def list_option_values(opts = {})
      data, _status_code, _headers = list_option_values_with_http_info(opts)
      data
    end

    # List option values
    # Lists the system&#39;s option values.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<OptionValue>, Integer, Hash)>] Array<OptionValue> data, response status code and response headers
    def list_option_values_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OptionValuesApi.list_option_values ...'
      end
      # resource path
      local_var_path = '/option_values'

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
      return_type = opts[:debug_return_type] || 'Array<OptionValue>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"OptionValuesApi.list_option_values",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionValuesApi#list_option_values\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update option value
    # Updates an option value.  Only users with the `update` permission on the option value can perform this action.
    # @param id [String] The ID of the Spree::OptionValue
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOptionValueRequest] :update_option_value_request 
    # @return [OptionValue]
    def update_option_value(id, opts = {})
      data, _status_code, _headers = update_option_value_with_http_info(id, opts)
      data
    end

    # Update option value
    # Updates an option value.  Only users with the &#x60;update&#x60; permission on the option value can perform this action.
    # @param id [String] The ID of the Spree::OptionValue
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOptionValueRequest] :update_option_value_request 
    # @return [Array<(OptionValue, Integer, Hash)>] OptionValue data, response status code and response headers
    def update_option_value_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OptionValuesApi.update_option_value ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OptionValuesApi.update_option_value"
      end
      # resource path
      local_var_path = '/option_values/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_option_value_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OptionValue'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"OptionValuesApi.update_option_value",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionValuesApi#update_option_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
