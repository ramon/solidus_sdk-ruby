=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::PromotionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PromotionsApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::PromotionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PromotionsApi' do
    it 'should create an instance of PromotionsApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::PromotionsApi)
    end
  end

  # unit tests for get_promotion
  # Get promotion
  # Retrieves a promotion.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Promotion]
  describe 'get_promotion test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
