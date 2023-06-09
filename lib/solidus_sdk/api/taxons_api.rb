=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class TaxonsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create taxonomy taxon
    # Creates a taxon for a taxonomy.  Only users with the `create` permission on `Spree::Taxon` can perform this action.
    # @param taxonomy_id [String] The id of the taxonomy for which the new taxon will be added
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTaxonomyTaxonRequest] :create_taxonomy_taxon_request 
    # @return [Taxon]
    def create_taxonomy_taxon(taxonomy_id, opts = {})
      data, _status_code, _headers = create_taxonomy_taxon_with_http_info(taxonomy_id, opts)
      data
    end

    # Create taxonomy taxon
    # Creates a taxon for a taxonomy.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::Taxon&#x60; can perform this action.
    # @param taxonomy_id [String] The id of the taxonomy for which the new taxon will be added
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTaxonomyTaxonRequest] :create_taxonomy_taxon_request 
    # @return [Array<(Taxon, Integer, Hash)>] Taxon data, response status code and response headers
    def create_taxonomy_taxon_with_http_info(taxonomy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxonsApi.create_taxonomy_taxon ...'
      end
      # verify the required parameter 'taxonomy_id' is set
      if @api_client.config.client_side_validation && taxonomy_id.nil?
        fail ArgumentError, "Missing the required parameter 'taxonomy_id' when calling TaxonsApi.create_taxonomy_taxon"
      end
      # resource path
      local_var_path = '/taxonomies/{taxonomy_id}/taxons'.sub('{' + 'taxonomy_id' + '}', CGI.escape(taxonomy_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_taxonomy_taxon_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Taxon'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"TaxonsApi.create_taxonomy_taxon",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxonsApi#create_taxonomy_taxon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete taxonomy taxon
    # Deletes a taxonomy's taxon.
    # @param taxonomy_id [String] The id of the taxon&#39;s taxonomy
    # @param id [String] The id of the taxon
    # @param [Hash] opts the optional parameters
    # @return [Taxon]
    def delete_taxonomy_taxon(taxonomy_id, id, opts = {})
      data, _status_code, _headers = delete_taxonomy_taxon_with_http_info(taxonomy_id, id, opts)
      data
    end

    # Delete taxonomy taxon
    # Deletes a taxonomy&#39;s taxon.
    # @param taxonomy_id [String] The id of the taxon&#39;s taxonomy
    # @param id [String] The id of the taxon
    # @param [Hash] opts the optional parameters
    # @return [Array<(Taxon, Integer, Hash)>] Taxon data, response status code and response headers
    def delete_taxonomy_taxon_with_http_info(taxonomy_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxonsApi.delete_taxonomy_taxon ...'
      end
      # verify the required parameter 'taxonomy_id' is set
      if @api_client.config.client_side_validation && taxonomy_id.nil?
        fail ArgumentError, "Missing the required parameter 'taxonomy_id' when calling TaxonsApi.delete_taxonomy_taxon"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxonsApi.delete_taxonomy_taxon"
      end
      # resource path
      local_var_path = '/taxonomies/{taxonomy_id}/taxons/{id}'.sub('{' + 'taxonomy_id' + '}', CGI.escape(taxonomy_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Taxon'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"TaxonsApi.delete_taxonomy_taxon",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxonsApi#delete_taxonomy_taxon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get taxonomy taxon
    # Retrieves a taxonomy's taxon.
    # @param taxonomy_id [String] The id of the taxon&#39;s taxonomy
    # @param id [String] The id of the taxon
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_taxonomy_taxon(taxonomy_id, id, opts = {})
      data, _status_code, _headers = get_taxonomy_taxon_with_http_info(taxonomy_id, id, opts)
      data
    end

    # Get taxonomy taxon
    # Retrieves a taxonomy&#39;s taxon.
    # @param taxonomy_id [String] The id of the taxon&#39;s taxonomy
    # @param id [String] The id of the taxon
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_taxonomy_taxon_with_http_info(taxonomy_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxonsApi.get_taxonomy_taxon ...'
      end
      # verify the required parameter 'taxonomy_id' is set
      if @api_client.config.client_side_validation && taxonomy_id.nil?
        fail ArgumentError, "Missing the required parameter 'taxonomy_id' when calling TaxonsApi.get_taxonomy_taxon"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxonsApi.get_taxonomy_taxon"
      end
      # resource path
      local_var_path = '/taxonomies/{taxonomy_id}/taxons/{id}'.sub('{' + 'taxonomy_id' + '}', CGI.escape(taxonomy_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"TaxonsApi.get_taxonomy_taxon",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxonsApi#get_taxonomy_taxon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List taxonomy taxons
    # Lists a taxonomy's taxons.
    # @param taxonomy_id [String] The id of the taxonomy for which the new taxon will be added
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @return [ListTaxonomyTaxons200Response]
    def list_taxonomy_taxons(taxonomy_id, opts = {})
      data, _status_code, _headers = list_taxonomy_taxons_with_http_info(taxonomy_id, opts)
      data
    end

    # List taxonomy taxons
    # Lists a taxonomy&#39;s taxons.
    # @param taxonomy_id [String] The id of the taxonomy for which the new taxon will be added
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @return [Array<(ListTaxonomyTaxons200Response, Integer, Hash)>] ListTaxonomyTaxons200Response data, response status code and response headers
    def list_taxonomy_taxons_with_http_info(taxonomy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxonsApi.list_taxonomy_taxons ...'
      end
      # verify the required parameter 'taxonomy_id' is set
      if @api_client.config.client_side_validation && taxonomy_id.nil?
        fail ArgumentError, "Missing the required parameter 'taxonomy_id' when calling TaxonsApi.list_taxonomy_taxons"
      end
      # resource path
      local_var_path = '/taxonomies/{taxonomy_id}/taxons'.sub('{' + 'taxonomy_id' + '}', CGI.escape(taxonomy_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListTaxonomyTaxons200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"TaxonsApi.list_taxonomy_taxons",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxonsApi#list_taxonomy_taxons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List taxons
    # Lists all taxons.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @option opts [Boolean] :without_children When set to &#x60;true&#x60;, it won&#39;t recursively return all the taxons&#39; children.
    # @return [ListTaxonomyTaxons200Response]
    def list_taxons(opts = {})
      data, _status_code, _headers = list_taxons_with_http_info(opts)
      data
    end

    # List taxons
    # Lists all taxons.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :per_page  (default to 25)
    # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
    # @option opts [Boolean] :without_children When set to &#x60;true&#x60;, it won&#39;t recursively return all the taxons&#39; children.
    # @return [Array<(ListTaxonomyTaxons200Response, Integer, Hash)>] ListTaxonomyTaxons200Response data, response status code and response headers
    def list_taxons_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxonsApi.list_taxons ...'
      end
      # resource path
      local_var_path = '/taxons'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'without_children'] = opts[:'without_children'] if !opts[:'without_children'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListTaxonomyTaxons200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"TaxonsApi.list_taxons",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxonsApi#list_taxons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update taxonomy taxon
    # Updates a taxonomy's taxon.  Only users with the `update` permission on the taxon can perform this action.
    # @param taxonomy_id [String] The id of the taxon&#39;s taxonomy
    # @param id [String] The id of the taxon
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTaxonomyTaxonRequest] :create_taxonomy_taxon_request 
    # @return [Taxon]
    def update_taxonomy_taxon(taxonomy_id, id, opts = {})
      data, _status_code, _headers = update_taxonomy_taxon_with_http_info(taxonomy_id, id, opts)
      data
    end

    # Update taxonomy taxon
    # Updates a taxonomy&#39;s taxon.  Only users with the &#x60;update&#x60; permission on the taxon can perform this action.
    # @param taxonomy_id [String] The id of the taxon&#39;s taxonomy
    # @param id [String] The id of the taxon
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTaxonomyTaxonRequest] :create_taxonomy_taxon_request 
    # @return [Array<(Taxon, Integer, Hash)>] Taxon data, response status code and response headers
    def update_taxonomy_taxon_with_http_info(taxonomy_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxonsApi.update_taxonomy_taxon ...'
      end
      # verify the required parameter 'taxonomy_id' is set
      if @api_client.config.client_side_validation && taxonomy_id.nil?
        fail ArgumentError, "Missing the required parameter 'taxonomy_id' when calling TaxonsApi.update_taxonomy_taxon"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxonsApi.update_taxonomy_taxon"
      end
      # resource path
      local_var_path = '/taxonomies/{taxonomy_id}/taxons/{id}'.sub('{' + 'taxonomy_id' + '}', CGI.escape(taxonomy_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_taxonomy_taxon_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Taxon'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"TaxonsApi.update_taxonomy_taxon",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxonsApi#update_taxonomy_taxon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
