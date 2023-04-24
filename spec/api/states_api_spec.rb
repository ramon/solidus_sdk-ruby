=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::StatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StatesApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::StatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatesApi' do
    it 'should create an instance of StatesApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::StatesApi)
    end
  end

  # unit tests for get_country_state
  # Get country state
  # Retrieves a country&#39;s state.
  # @param country_id 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [State]
  describe 'get_country_state test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_state
  # Get state
  # Retrieves a state.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [State]
  describe 'get_state test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_country_states
  # List country states
  # Retrieves a country&#39;s states.
  # @param country_id 
  # @param [Hash] opts the optional parameters
  # @return [ListCountryStates200Response]
  describe 'list_country_states test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_states
  # List states
  # Lists all states in the system.
  # @param [Hash] opts the optional parameters
  # @return [ListStates200Response]
  describe 'list_states test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
