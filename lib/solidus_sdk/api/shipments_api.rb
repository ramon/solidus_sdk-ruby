=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class ShipmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add shipment item
    # Adds an item to a shipment.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [AddShipmentItemRequest] :add_shipment_item_request 
    # @return [Shipment]
    def add_shipment_item(shipment_number, opts = {})
      data, _status_code, _headers = add_shipment_item_with_http_info(shipment_number, opts)
      data
    end

    # Add shipment item
    # Adds an item to a shipment.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [AddShipmentItemRequest] :add_shipment_item_request 
    # @return [Array<(Shipment, Integer, Hash)>] Shipment data, response status code and response headers
    def add_shipment_item_with_http_info(shipment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.add_shipment_item ...'
      end
      # verify the required parameter 'shipment_number' is set
      if @api_client.config.client_side_validation && shipment_number.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_number' when calling ShipmentsApi.add_shipment_item"
      end
      # resource path
      local_var_path = '/shipments/{shipment_number}/add'.sub('{' + 'shipment_number' + '}', CGI.escape(shipment_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'add_shipment_item_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Shipment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.add_shipment_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#add_shipment_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create shipment
    # Creates a shipment.  Please note that this request can be only performed by users with the `create` permission on the shipment.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateShipmentRequest] :create_shipment_request 
    # @return [Shipment]
    def create_shipment(opts = {})
      data, _status_code, _headers = create_shipment_with_http_info(opts)
      data
    end

    # Create shipment
    # Creates a shipment.  Please note that this request can be only performed by users with the &#x60;create&#x60; permission on the shipment.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateShipmentRequest] :create_shipment_request 
    # @return [Array<(Shipment, Integer, Hash)>] Shipment data, response status code and response headers
    def create_shipment_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.create_shipment ...'
      end
      # resource path
      local_var_path = '/shipments'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_shipment_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Shipment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.create_shipment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#create_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List shipment estimated rates
    # Lists a shipment's estimated rates.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @return [ListShipmentEstimatedRates200Response]
    def list_shipment_estimated_rates(shipment_number, opts = {})
      data, _status_code, _headers = list_shipment_estimated_rates_with_http_info(shipment_number, opts)
      data
    end

    # List shipment estimated rates
    # Lists a shipment&#39;s estimated rates.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListShipmentEstimatedRates200Response, Integer, Hash)>] ListShipmentEstimatedRates200Response data, response status code and response headers
    def list_shipment_estimated_rates_with_http_info(shipment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.list_shipment_estimated_rates ...'
      end
      # verify the required parameter 'shipment_number' is set
      if @api_client.config.client_side_validation && shipment_number.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_number' when calling ShipmentsApi.list_shipment_estimated_rates"
      end
      # resource path
      local_var_path = '/shipments/{shipment_number}/estimated_rates'.sub('{' + 'shipment_number' + '}', CGI.escape(shipment_number.to_s))

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
      return_type = opts[:debug_return_type] || 'ListShipmentEstimatedRates200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.list_shipment_estimated_rates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#list_shipment_estimated_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List user's shipments
    # Lists the current user's shipments.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @return [ListUserShipments200Response]
    def list_user_shipments(opts = {})
      data, _status_code, _headers = list_user_shipments_with_http_info(opts)
      data
    end

    # List user&#39;s shipments
    # Lists the current user&#39;s shipments.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @return [Array<(ListUserShipments200Response, Integer, Hash)>] ListUserShipments200Response data, response status code and response headers
    def list_user_shipments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.list_user_shipments ...'
      end
      # resource path
      local_var_path = '/shipments/mine'

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
      return_type = opts[:debug_return_type] || 'ListUserShipments200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.list_user_shipments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#list_user_shipments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ready shipment
    # Readies a shipment for processing.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @return [Shipment]
    def ready_shipment(shipment_number, opts = {})
      data, _status_code, _headers = ready_shipment_with_http_info(shipment_number, opts)
      data
    end

    # Ready shipment
    # Readies a shipment for processing.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shipment, Integer, Hash)>] Shipment data, response status code and response headers
    def ready_shipment_with_http_info(shipment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.ready_shipment ...'
      end
      # verify the required parameter 'shipment_number' is set
      if @api_client.config.client_side_validation && shipment_number.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_number' when calling ShipmentsApi.ready_shipment"
      end
      # resource path
      local_var_path = '/shipments/{shipment_number}/ready'.sub('{' + 'shipment_number' + '}', CGI.escape(shipment_number.to_s))

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
      return_type = opts[:debug_return_type] || 'Shipment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.ready_shipment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#ready_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove shipment item
    # Removes an item from a shipment.
    # @param shipment_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [AddShipmentItemRequest] :add_shipment_item_request 
    # @return [Shipment]
    def remove_shipment_id(shipment_id, opts = {})
      data, _status_code, _headers = remove_shipment_id_with_http_info(shipment_id, opts)
      data
    end

    # Remove shipment item
    # Removes an item from a shipment.
    # @param shipment_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [AddShipmentItemRequest] :add_shipment_item_request 
    # @return [Array<(Shipment, Integer, Hash)>] Shipment data, response status code and response headers
    def remove_shipment_id_with_http_info(shipment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.remove_shipment_id ...'
      end
      # verify the required parameter 'shipment_id' is set
      if @api_client.config.client_side_validation && shipment_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShipmentsApi.remove_shipment_id"
      end
      # resource path
      local_var_path = '/shipments/{shipment_id}/remove'.sub('{' + 'shipment_id' + '}', CGI.escape(shipment_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'add_shipment_item_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Shipment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.remove_shipment_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#remove_shipment_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Select shipment shipping method
    # Selects the shipping method for a shipment.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SelectShipmentShippingMethodRequest] :select_shipment_shipping_method_request 
    # @return [Shipment]
    def select_shipment_shipping_method(shipment_number, opts = {})
      data, _status_code, _headers = select_shipment_shipping_method_with_http_info(shipment_number, opts)
      data
    end

    # Select shipment shipping method
    # Selects the shipping method for a shipment.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SelectShipmentShippingMethodRequest] :select_shipment_shipping_method_request 
    # @return [Array<(Shipment, Integer, Hash)>] Shipment data, response status code and response headers
    def select_shipment_shipping_method_with_http_info(shipment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.select_shipment_shipping_method ...'
      end
      # verify the required parameter 'shipment_number' is set
      if @api_client.config.client_side_validation && shipment_number.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_number' when calling ShipmentsApi.select_shipment_shipping_method"
      end
      # resource path
      local_var_path = '/shipments/{shipment_number}/select_shipping_method'.sub('{' + 'shipment_number' + '}', CGI.escape(shipment_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'select_shipment_shipping_method_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Shipment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'order-token']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.select_shipment_shipping_method",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#select_shipment_shipping_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ship shipment
    # Ships a shipment.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [ShipShipmentRequest] :ship_shipment_request 
    # @return [Shipment]
    def ship_shipment(shipment_number, opts = {})
      data, _status_code, _headers = ship_shipment_with_http_info(shipment_number, opts)
      data
    end

    # Ship shipment
    # Ships a shipment.
    # @param shipment_number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [ShipShipmentRequest] :ship_shipment_request 
    # @return [Array<(Shipment, Integer, Hash)>] Shipment data, response status code and response headers
    def ship_shipment_with_http_info(shipment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.ship_shipment ...'
      end
      # verify the required parameter 'shipment_number' is set
      if @api_client.config.client_side_validation && shipment_number.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_number' when calling ShipmentsApi.ship_shipment"
      end
      # resource path
      local_var_path = '/shipments/{shipment_number}/ship'.sub('{' + 'shipment_number' + '}', CGI.escape(shipment_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ship_shipment_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Shipment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.ship_shipment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#ship_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Transfer shipment item to location
    # Transfers a shipment's item to a different stock location.
    # @param [Hash] opts the optional parameters
    # @option opts [TransferShipmentItemToLocationRequest] :transfer_shipment_item_to_location_request 
    # @return [TransferShipmentItemToLocation200Response]
    def transfer_shipment_item_to_location(opts = {})
      data, _status_code, _headers = transfer_shipment_item_to_location_with_http_info(opts)
      data
    end

    # Transfer shipment item to location
    # Transfers a shipment&#39;s item to a different stock location.
    # @param [Hash] opts the optional parameters
    # @option opts [TransferShipmentItemToLocationRequest] :transfer_shipment_item_to_location_request 
    # @return [Array<(TransferShipmentItemToLocation200Response, Integer, Hash)>] TransferShipmentItemToLocation200Response data, response status code and response headers
    def transfer_shipment_item_to_location_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.transfer_shipment_item_to_location ...'
      end
      # resource path
      local_var_path = '/shipments/transfer_to_location'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'transfer_shipment_item_to_location_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'TransferShipmentItemToLocation200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.transfer_shipment_item_to_location",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#transfer_shipment_item_to_location\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Transfer shipment item to shipment
    # Transfer a shipment's item to another shipment.
    # @param [Hash] opts the optional parameters
    # @option opts [TransferShipmentItemToShipmentRequest] :transfer_shipment_item_to_shipment_request 
    # @return [TransferShipmentItemToLocation200Response]
    def transfer_shipment_item_to_shipment(opts = {})
      data, _status_code, _headers = transfer_shipment_item_to_shipment_with_http_info(opts)
      data
    end

    # Transfer shipment item to shipment
    # Transfer a shipment&#39;s item to another shipment.
    # @param [Hash] opts the optional parameters
    # @option opts [TransferShipmentItemToShipmentRequest] :transfer_shipment_item_to_shipment_request 
    # @return [Array<(TransferShipmentItemToLocation200Response, Integer, Hash)>] TransferShipmentItemToLocation200Response data, response status code and response headers
    def transfer_shipment_item_to_shipment_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.transfer_shipment_item_to_shipment ...'
      end
      # resource path
      local_var_path = '/shipments/transfer_to_shipment'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'transfer_shipment_item_to_shipment_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'TransferShipmentItemToLocation200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.transfer_shipment_item_to_shipment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#transfer_shipment_item_to_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update shipment
    # Updates a shipment.  Please note that this request can be only performed by users with the `update` permission on the shipment.
    # @param number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateShipmentRequest] :update_shipment_request 
    # @return [Shipment]
    def update_shipment(number, opts = {})
      data, _status_code, _headers = update_shipment_with_http_info(number, opts)
      data
    end

    # Update shipment
    # Updates a shipment.  Please note that this request can be only performed by users with the &#x60;update&#x60; permission on the shipment.
    # @param number [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateShipmentRequest] :update_shipment_request 
    # @return [Array<(Shipment, Integer, Hash)>] Shipment data, response status code and response headers
    def update_shipment_with_http_info(number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.update_shipment ...'
      end
      # verify the required parameter 'number' is set
      if @api_client.config.client_side_validation && number.nil?
        fail ArgumentError, "Missing the required parameter 'number' when calling ShipmentsApi.update_shipment"
      end
      # resource path
      local_var_path = '/shipments/{number}'.sub('{' + 'number' + '}', CGI.escape(number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_shipment_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Shipment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.update_shipment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#update_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
