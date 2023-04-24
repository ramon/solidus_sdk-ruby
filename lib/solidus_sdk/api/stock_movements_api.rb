=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class StockMovementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create stock location movement
    # Creates a stock movement for a stock location.
    # @param stock_location_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [StockMovementInput] :stock_movement_input 
    # @return [StockMovement]
    def create_stock_location_movement(stock_location_id, opts = {})
      data, _status_code, _headers = create_stock_location_movement_with_http_info(stock_location_id, opts)
      data
    end

    # Create stock location movement
    # Creates a stock movement for a stock location.
    # @param stock_location_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [StockMovementInput] :stock_movement_input 
    # @return [Array<(StockMovement, Integer, Hash)>] StockMovement data, response status code and response headers
    def create_stock_location_movement_with_http_info(stock_location_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockMovementsApi.create_stock_location_movement ...'
      end
      # verify the required parameter 'stock_location_id' is set
      if @api_client.config.client_side_validation && stock_location_id.nil?
        fail ArgumentError, "Missing the required parameter 'stock_location_id' when calling StockMovementsApi.create_stock_location_movement"
      end
      # resource path
      local_var_path = '/stock_locations/{stock_location_id}/stock_movements'.sub('{' + 'stock_location_id' + '}', CGI.escape(stock_location_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'stock_movement_input'])

      # return_type
      return_type = opts[:debug_return_type] || 'StockMovement'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"StockMovementsApi.create_stock_location_movement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockMovementsApi#create_stock_location_movement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get stock location movement
    # Retrieves a stock location's movement.
    # @param stock_location_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_stock_location_movement(stock_location_id, id, opts = {})
      data, _status_code, _headers = get_stock_location_movement_with_http_info(stock_location_id, id, opts)
      data
    end

    # Get stock location movement
    # Retrieves a stock location&#39;s movement.
    # @param stock_location_id [String] 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_stock_location_movement_with_http_info(stock_location_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockMovementsApi.get_stock_location_movement ...'
      end
      # verify the required parameter 'stock_location_id' is set
      if @api_client.config.client_side_validation && stock_location_id.nil?
        fail ArgumentError, "Missing the required parameter 'stock_location_id' when calling StockMovementsApi.get_stock_location_movement"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StockMovementsApi.get_stock_location_movement"
      end
      # resource path
      local_var_path = '/stock_locations/{stock_location_id}/stock_movements/{id}'.sub('{' + 'stock_location_id' + '}', CGI.escape(stock_location_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"StockMovementsApi.get_stock_location_movement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockMovementsApi#get_stock_location_movement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List stock location movements
    # Lists a stock location's movements.
    # @param stock_location_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @return [ListStockLocationMovements200Response]
    def list_stock_location_movements(stock_location_id, opts = {})
      data, _status_code, _headers = list_stock_location_movements_with_http_info(stock_location_id, opts)
      data
    end

    # List stock location movements
    # Lists a stock location&#39;s movements.
    # @param stock_location_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @return [Array<(ListStockLocationMovements200Response, Integer, Hash)>] ListStockLocationMovements200Response data, response status code and response headers
    def list_stock_location_movements_with_http_info(stock_location_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockMovementsApi.list_stock_location_movements ...'
      end
      # verify the required parameter 'stock_location_id' is set
      if @api_client.config.client_side_validation && stock_location_id.nil?
        fail ArgumentError, "Missing the required parameter 'stock_location_id' when calling StockMovementsApi.list_stock_location_movements"
      end
      # resource path
      local_var_path = '/stock_locations/{stock_location_id}/stock_movements'.sub('{' + 'stock_location_id' + '}', CGI.escape(stock_location_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListStockLocationMovements200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"StockMovementsApi.list_stock_location_movements",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockMovementsApi#list_stock_location_movements\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
