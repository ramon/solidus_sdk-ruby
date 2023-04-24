=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::CustomerReturnsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CustomerReturnsApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::CustomerReturnsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerReturnsApi' do
    it 'should create an instance of CustomerReturnsApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::CustomerReturnsApi)
    end
  end

  # unit tests for create_order_customer_return
  # Create order customer return
  # Creates a customer return for an order.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::CustomerReturn&#x60; can perform this action.
  # @param order_number The order number
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateOrderCustomerReturnRequest] :update_order_customer_return_request 
  # @return [CustomerReturn]
  describe 'create_order_customer_return test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_order_customer_return
  # Get order customer return
  # Gets an orders customer return.
  # @param order_id The order number
  # @param id The id of the customer return
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_order_customer_return test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_order_customer_returns
  # List order customer returns
  # Lists an order&#39;s customer returns.
  # @param order_number The order number
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
  # @return [ListOrderCustomerReturns200Response]
  describe 'list_order_customer_returns test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_order_customer_return
  # Update order customer return
  # Updates an orders customer return.  Only users with the &#x60;update&#x60; permission on the customer return can perform this action.
  # @param order_id The order number
  # @param id The id of the customer return
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateOrderCustomerReturnRequest] :update_order_customer_return_request 
  # @return [CustomerReturn]
  describe 'update_order_customer_return test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
