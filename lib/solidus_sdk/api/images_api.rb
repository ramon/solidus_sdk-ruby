=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'cgi'

module SolidusSdk
  class ImagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create product image
    # Creates an image for a product.  Only users with the `create` permission on `Spree::Image` can perform this action.
    # @param product_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductImageRequest] :create_product_image_request 
    # @return [Image]
    def create_product_image(product_id, opts = {})
      data, _status_code, _headers = create_product_image_with_http_info(product_id, opts)
      data
    end

    # Create product image
    # Creates an image for a product.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::Image&#x60; can perform this action.
    # @param product_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductImageRequest] :create_product_image_request 
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def create_product_image_with_http_info(product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.create_product_image ...'
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ImagesApi.create_product_image"
      end
      # resource path
      local_var_path = '/products/{product_id}/images'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_product_image_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.create_product_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#create_product_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create variant image
    # Creates an image for a variant.  Only users with the `create` permission on `Spree::Image` can perform this action.
    # @param variant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductImageRequest] :create_product_image_request 
    # @return [Image]
    def create_variant_image(variant_id, opts = {})
      data, _status_code, _headers = create_variant_image_with_http_info(variant_id, opts)
      data
    end

    # Create variant image
    # Creates an image for a variant.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::Image&#x60; can perform this action.
    # @param variant_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductImageRequest] :create_product_image_request 
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def create_variant_image_with_http_info(variant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.create_variant_image ...'
      end
      # verify the required parameter 'variant_id' is set
      if @api_client.config.client_side_validation && variant_id.nil?
        fail ArgumentError, "Missing the required parameter 'variant_id' when calling ImagesApi.create_variant_image"
      end
      # resource path
      local_var_path = '/variants/{variant_id}/images'.sub('{' + 'variant_id' + '}', CGI.escape(variant_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_product_image_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.create_variant_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#create_variant_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete product image
    # Deletes a product's image.
    # @param product_id [String] The id of the Spree::Product
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @return [Image]
    def delete_product_image(product_id, id, opts = {})
      data, _status_code, _headers = delete_product_image_with_http_info(product_id, id, opts)
      data
    end

    # Delete product image
    # Deletes a product&#39;s image.
    # @param product_id [String] The id of the Spree::Product
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def delete_product_image_with_http_info(product_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.delete_product_image ...'
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ImagesApi.delete_product_image"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ImagesApi.delete_product_image"
      end
      # resource path
      local_var_path = '/products/{product_id}/images/{id}'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.delete_product_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#delete_product_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete variant image
    # Deletes a variant's image.
    # @param variant_id [String] The id of the Spree::Variant
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @return [Image]
    def delete_variant_image(variant_id, id, opts = {})
      data, _status_code, _headers = delete_variant_image_with_http_info(variant_id, id, opts)
      data
    end

    # Delete variant image
    # Deletes a variant&#39;s image.
    # @param variant_id [String] The id of the Spree::Variant
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def delete_variant_image_with_http_info(variant_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.delete_variant_image ...'
      end
      # verify the required parameter 'variant_id' is set
      if @api_client.config.client_side_validation && variant_id.nil?
        fail ArgumentError, "Missing the required parameter 'variant_id' when calling ImagesApi.delete_variant_image"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ImagesApi.delete_variant_image"
      end
      # resource path
      local_var_path = '/variants/{variant_id}/images/{id}'.sub('{' + 'variant_id' + '}', CGI.escape(variant_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.delete_variant_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#delete_variant_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get product image
    # Retrieves a product's image.
    # @param product_id [String] The id of the Spree::Product
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @return [Image]
    def get_product_image(product_id, id, opts = {})
      data, _status_code, _headers = get_product_image_with_http_info(product_id, id, opts)
      data
    end

    # Get product image
    # Retrieves a product&#39;s image.
    # @param product_id [String] The id of the Spree::Product
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def get_product_image_with_http_info(product_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.get_product_image ...'
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ImagesApi.get_product_image"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ImagesApi.get_product_image"
      end
      # resource path
      local_var_path = '/products/{product_id}/images/{id}'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.get_product_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#get_product_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get variant image
    # Retrieves a variant's image.
    # @param variant_id [String] The id of the Spree::Variant
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @return [Image]
    def get_variant_image(variant_id, id, opts = {})
      data, _status_code, _headers = get_variant_image_with_http_info(variant_id, id, opts)
      data
    end

    # Get variant image
    # Retrieves a variant&#39;s image.
    # @param variant_id [String] The id of the Spree::Variant
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def get_variant_image_with_http_info(variant_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.get_variant_image ...'
      end
      # verify the required parameter 'variant_id' is set
      if @api_client.config.client_side_validation && variant_id.nil?
        fail ArgumentError, "Missing the required parameter 'variant_id' when calling ImagesApi.get_variant_image"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ImagesApi.get_variant_image"
      end
      # resource path
      local_var_path = '/variants/{variant_id}/images/{id}'.sub('{' + 'variant_id' + '}', CGI.escape(variant_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.get_variant_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#get_variant_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List product images
    # Retrieves a product's images.
    # @param product_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ListProductImages200Response]
    def list_product_images(product_id, opts = {})
      data, _status_code, _headers = list_product_images_with_http_info(product_id, opts)
      data
    end

    # List product images
    # Retrieves a product&#39;s images.
    # @param product_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListProductImages200Response, Integer, Hash)>] ListProductImages200Response data, response status code and response headers
    def list_product_images_with_http_info(product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.list_product_images ...'
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ImagesApi.list_product_images"
      end
      # resource path
      local_var_path = '/products/{product_id}/images'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListProductImages200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.list_product_images",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#list_product_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List variant images
    # Lists a variant's images.
    # @param variant_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ListProductImages200Response]
    def list_variant_images(variant_id, opts = {})
      data, _status_code, _headers = list_variant_images_with_http_info(variant_id, opts)
      data
    end

    # List variant images
    # Lists a variant&#39;s images.
    # @param variant_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListProductImages200Response, Integer, Hash)>] ListProductImages200Response data, response status code and response headers
    def list_variant_images_with_http_info(variant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.list_variant_images ...'
      end
      # verify the required parameter 'variant_id' is set
      if @api_client.config.client_side_validation && variant_id.nil?
        fail ArgumentError, "Missing the required parameter 'variant_id' when calling ImagesApi.list_variant_images"
      end
      # resource path
      local_var_path = '/variants/{variant_id}/images'.sub('{' + 'variant_id' + '}', CGI.escape(variant_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListProductImages200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.list_variant_images",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#list_variant_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update product image
    # Updates a product's image.  Only users with the `update` permission on the image can perform this action.
    # @param product_id [String] The id of the Spree::Product
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductImageRequest] :create_product_image_request 
    # @return [Image]
    def update_product_image(product_id, id, opts = {})
      data, _status_code, _headers = update_product_image_with_http_info(product_id, id, opts)
      data
    end

    # Update product image
    # Updates a product&#39;s image.  Only users with the &#x60;update&#x60; permission on the image can perform this action.
    # @param product_id [String] The id of the Spree::Product
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductImageRequest] :create_product_image_request 
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def update_product_image_with_http_info(product_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.update_product_image ...'
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ImagesApi.update_product_image"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ImagesApi.update_product_image"
      end
      # resource path
      local_var_path = '/products/{product_id}/images/{id}'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_product_image_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.update_product_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#update_product_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update variant image
    # Updates a variant's image.  Only users with the `update` permission on the image can perform this action.
    # @param variant_id [String] The id of the Spree::Variant
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductImageRequest] :create_product_image_request 
    # @return [Image]
    def update_variant_image(variant_id, id, opts = {})
      data, _status_code, _headers = update_variant_image_with_http_info(variant_id, id, opts)
      data
    end

    # Update variant image
    # Updates a variant&#39;s image.  Only users with the &#x60;update&#x60; permission on the image can perform this action.
    # @param variant_id [String] The id of the Spree::Variant
    # @param id [String] The id of the Spree::Image
    # @param [Hash] opts the optional parameters
    # @option opts [CreateProductImageRequest] :create_product_image_request 
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def update_variant_image_with_http_info(variant_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.update_variant_image ...'
      end
      # verify the required parameter 'variant_id' is set
      if @api_client.config.client_side_validation && variant_id.nil?
        fail ArgumentError, "Missing the required parameter 'variant_id' when calling ImagesApi.update_variant_image"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ImagesApi.update_variant_image"
      end
      # resource path
      local_var_path = '/variants/{variant_id}/images/{id}'.sub('{' + 'variant_id' + '}', CGI.escape(variant_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_product_image_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"ImagesApi.update_variant_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#update_variant_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
