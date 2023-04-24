=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::ShipmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ShipmentsApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::ShipmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShipmentsApi' do
    it 'should create an instance of ShipmentsApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::ShipmentsApi)
    end
  end

  # unit tests for add_shipment_item
  # Add shipment item
  # Adds an item to a shipment.
  # @param shipment_number 
  # @param [Hash] opts the optional parameters
  # @option opts [AddShipmentItemRequest] :add_shipment_item_request 
  # @return [Shipment]
  describe 'add_shipment_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_shipment
  # Create shipment
  # Creates a shipment.  Please note that this request can be only performed by users with the &#x60;create&#x60; permission on the shipment.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateShipmentRequest] :create_shipment_request 
  # @return [Shipment]
  describe 'create_shipment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_shipment_estimated_rates
  # List shipment estimated rates
  # Lists a shipment&#39;s estimated rates.
  # @param shipment_number 
  # @param [Hash] opts the optional parameters
  # @return [ListShipmentEstimatedRates200Response]
  describe 'list_shipment_estimated_rates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_user_shipments
  # List user&#39;s shipments
  # Lists the current user&#39;s shipments.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
  # @return [ListUserShipments200Response]
  describe 'list_user_shipments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ready_shipment
  # Ready shipment
  # Readies a shipment for processing.
  # @param shipment_number 
  # @param [Hash] opts the optional parameters
  # @return [Shipment]
  describe 'ready_shipment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for remove_shipment_id
  # Remove shipment item
  # Removes an item from a shipment.
  # @param shipment_id 
  # @param [Hash] opts the optional parameters
  # @option opts [AddShipmentItemRequest] :add_shipment_item_request 
  # @return [Shipment]
  describe 'remove_shipment_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for select_shipment_shipping_method
  # Select shipment shipping method
  # Selects the shipping method for a shipment.
  # @param shipment_number 
  # @param [Hash] opts the optional parameters
  # @option opts [SelectShipmentShippingMethodRequest] :select_shipment_shipping_method_request 
  # @return [Shipment]
  describe 'select_shipment_shipping_method test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ship_shipment
  # Ship shipment
  # Ships a shipment.
  # @param shipment_number 
  # @param [Hash] opts the optional parameters
  # @option opts [ShipShipmentRequest] :ship_shipment_request 
  # @return [Shipment]
  describe 'ship_shipment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for transfer_shipment_item_to_location
  # Transfer shipment item to location
  # Transfers a shipment&#39;s item to a different stock location.
  # @param [Hash] opts the optional parameters
  # @option opts [TransferShipmentItemToLocationRequest] :transfer_shipment_item_to_location_request 
  # @return [TransferShipmentItemToLocation200Response]
  describe 'transfer_shipment_item_to_location test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for transfer_shipment_item_to_shipment
  # Transfer shipment item to shipment
  # Transfer a shipment&#39;s item to another shipment.
  # @param [Hash] opts the optional parameters
  # @option opts [TransferShipmentItemToShipmentRequest] :transfer_shipment_item_to_shipment_request 
  # @return [TransferShipmentItemToLocation200Response]
  describe 'transfer_shipment_item_to_shipment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_shipment
  # Update shipment
  # Updates a shipment.  Please note that this request can be only performed by users with the &#x60;update&#x60; permission on the shipment.
  # @param number 
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateShipmentRequest] :update_shipment_request 
  # @return [Shipment]
  describe 'update_shipment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
