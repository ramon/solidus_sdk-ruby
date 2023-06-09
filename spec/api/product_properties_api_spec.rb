=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::ProductPropertiesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductPropertiesApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::ProductPropertiesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductPropertiesApi' do
    it 'should create an instance of ProductPropertiesApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::ProductPropertiesApi)
    end
  end

  # unit tests for create_product_property
  # Create product property
  # Creates a product property.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::ProductProperty&#x60; can perform this action.
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateProductPropertyRequest] :create_product_property_request 
  # @return [ProductProperty]
  describe 'create_product_property test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_product_property
  # Delete product property
  # Deletes a product&#39;s property.
  # @param product_id 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ProductProperty]
  describe 'delete_product_property test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_product_property
  # Get product property
  # Retrieves a product&#39;s property.
  # @param product_id 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ProductProperty]
  describe 'get_product_property test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_product_properties
  # List product properties
  # Lists a product&#39;s properties.
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
  # @return [ListProductProperties200Response]
  describe 'list_product_properties test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_product_property
  # Update product property
  # Updates a product&#39;s property.  Only users with the &#x60;update&#x60; permission on the product property can perform this action.
  # @param product_id 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateProductPropertyRequest] :create_product_property_request 
  # @return [ProductProperty]
  describe 'update_product_property test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
