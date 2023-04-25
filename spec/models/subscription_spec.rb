=begin
#solidus_subscriptions

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SolidusSdk::Subscription
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SolidusSdk::Subscription do
  let(:instance) { SolidusSdk::Subscription.new }

  describe 'test an instance of Subscription' do
    it 'should create an instance of Subscription' do
      expect(instance).to be_instance_of(SolidusSdk::Subscription)
    end
  end
  describe 'test attribute "actionable_date"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "interval_units"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["day", "week", "month", "year"])
      # validator.allowable_values.each do |value|
      #   expect { instance.interval_units = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "interval_length"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "end_date"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
