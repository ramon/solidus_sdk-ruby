=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class PropertiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create property
    # Creates a property.  Only users with the `create` permission on `Spree::Propery` can perform this action.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePropertyRequest] :create_property_request 
    # @return [Property]
    def create_property(opts = {})
      data, _status_code, _headers = create_property_with_http_info(opts)
      data
    end

    # Create property
    # Creates a property.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::Propery&#x60; can perform this action.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePropertyRequest] :create_property_request 
    # @return [Array<(Property, Integer, Hash)>] Property data, response status code and response headers
    def create_property_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PropertiesApi.create_property ...'
      end
      # resource path
      local_var_path = '/properties'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_property_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Property'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"PropertiesApi.create_property",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PropertiesApi#create_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete property
    # Deletes a property.
    # @param id [String] The id of the Spree::Property
    # @param [Hash] opts the optional parameters
    # @return [Property]
    def delete_property(id, opts = {})
      data, _status_code, _headers = delete_property_with_http_info(id, opts)
      data
    end

    # Delete property
    # Deletes a property.
    # @param id [String] The id of the Spree::Property
    # @param [Hash] opts the optional parameters
    # @return [Array<(Property, Integer, Hash)>] Property data, response status code and response headers
    def delete_property_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PropertiesApi.delete_property ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PropertiesApi.delete_property"
      end
      # resource path
      local_var_path = '/properties/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Property'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"PropertiesApi.delete_property",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PropertiesApi#delete_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get property
    # Retrieves a property.
    # @param id [String] The id of the Spree::Property
    # @param [Hash] opts the optional parameters
    # @return [Property]
    def get_property(id, opts = {})
      data, _status_code, _headers = get_property_with_http_info(id, opts)
      data
    end

    # Get property
    # Retrieves a property.
    # @param id [String] The id of the Spree::Property
    # @param [Hash] opts the optional parameters
    # @return [Array<(Property, Integer, Hash)>] Property data, response status code and response headers
    def get_property_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PropertiesApi.get_property ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PropertiesApi.get_property"
      end
      # resource path
      local_var_path = '/properties/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Property'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"PropertiesApi.get_property",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PropertiesApi#get_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List properties
    # Lists the defined properties.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @return [ListProperties200Response]
    def list_properties(opts = {})
      data, _status_code, _headers = list_properties_with_http_info(opts)
      data
    end

    # List properties
    # Lists the defined properties.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @return [Array<(ListProperties200Response, Integer, Hash)>] ListProperties200Response data, response status code and response headers
    def list_properties_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PropertiesApi.list_properties ...'
      end
      # resource path
      local_var_path = '/properties'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListProperties200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"PropertiesApi.list_properties",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PropertiesApi#list_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update property
    # Updates a property.  Only users with the `update` permission on the property can perform this action.
    # @param id [String] The id of the Spree::Property
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePropertyRequest] :create_property_request 
    # @return [Property]
    def update_property(id, opts = {})
      data, _status_code, _headers = update_property_with_http_info(id, opts)
      data
    end

    # Update property
    # Updates a property.  Only users with the &#x60;update&#x60; permission on the property can perform this action.
    # @param id [String] The id of the Spree::Property
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePropertyRequest] :create_property_request 
    # @return [Array<(Property, Integer, Hash)>] Property data, response status code and response headers
    def update_property_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PropertiesApi.update_property ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PropertiesApi.update_property"
      end
      # resource path
      local_var_path = '/properties/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_property_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Property'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"PropertiesApi.update_property",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PropertiesApi#update_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
