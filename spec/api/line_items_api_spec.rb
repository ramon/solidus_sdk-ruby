=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::LineItemsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LineItemsApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::LineItemsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LineItemsApi' do
    it 'should create an instance of LineItemsApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::LineItemsApi)
    end
  end

  # unit tests for create_checkout_line_item
  # Create checkout line item
  # Create a line item in an checkout not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  It is not possible to add a line item to a completed order.
  # @param checkout_id The order number
  # @param [Hash] opts the optional parameters
  # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
  # @return [LineItem]
  describe 'create_checkout_line_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_order_line_item
  # Create order line item
  # Create a line item in an order not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
  # @param order_number 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
  # @return [LineItem]
  describe 'create_order_line_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_checkout_line_item
  # Delete checkout line item
  # Deletes a checkout&#39;s line item.
  # @param checkout_id The order number
  # @param id The id of the line item to update
  # @param [Hash] opts the optional parameters
  # @return [LineItem]
  describe 'delete_checkout_line_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_order_line_item
  # Delete order line item
  # Deletes an order&#39;s line item.
  # @param order_number The order number
  # @param id The id of the line item to update
  # @param [Hash] opts the optional parameters
  # @return [LineItem]
  describe 'delete_order_line_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_checkout_line_item
  # Update checkout line item
  # Update line item&#39;s information in an checkout not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).  It is not possible to add a line item to a completed order.
  # @param checkout_id The order number
  # @param id The id of the line item to update
  # @param [Hash] opts the optional parameters
  # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
  # @return [LineItem]
  describe 'update_checkout_line_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_order_line_item
  # Update order line item
  # Update line item&#39;s information in an order not yet completed.  To perform this operation the request should be made as the order owner or with the order token in case of unauthenitcated checkouts (es. guest checkout).
  # @param order_number The order number
  # @param id The id of the line item to update
  # @param [Hash] opts the optional parameters
  # @option opts [CreateOrderLineItemRequest] :create_order_line_item_request 
  # @return [LineItem]
  describe 'update_order_line_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
