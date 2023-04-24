=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::OptionValuesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OptionValuesApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::OptionValuesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OptionValuesApi' do
    it 'should create an instance of OptionValuesApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::OptionValuesApi)
    end
  end

  # unit tests for create_option_type_value
  # Create option type value
  # Creates an option value for a type.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::OptionValue&#x60; can perform this action.
  # @param option_type_id The ID of the Spree::OptionType
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateOptionValueRequest] :update_option_value_request 
  # @return [OptionValue]
  describe 'create_option_type_value test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_option_value
  # Delete option value
  # Deletes an option value.
  # @param id The ID of the Spree::OptionValue
  # @param [Hash] opts the optional parameters
  # @return [OptionValue]
  describe 'delete_option_value test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_option_value
  # Get option value
  # Retrieves an option value.
  # @param id The ID of the Spree::OptionValue
  # @param [Hash] opts the optional parameters
  # @return [OptionValue]
  describe 'get_option_value test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_option_type_values
  # List option type values
  # Retrieves an option type&#39;s option values.
  # @param option_type_id The ID of the Spree::OptionType
  # @param [Hash] opts the optional parameters
  # @return [Array<OptionValue>]
  describe 'list_option_type_values test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_option_values
  # List option values
  # Lists the system&#39;s option values.
  # @param [Hash] opts the optional parameters
  # @return [Array<OptionValue>]
  describe 'list_option_values test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_option_value
  # Update option value
  # Updates an option value.  Only users with the &#x60;update&#x60; permission on the option value can perform this action.
  # @param id The ID of the Spree::OptionValue
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateOptionValueRequest] :update_option_value_request 
  # @return [OptionValue]
  describe 'update_option_value test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end