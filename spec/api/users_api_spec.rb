=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::UsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::UsersApi)
    end
  end

  # unit tests for create_user
  # Create user
  # Creates a user.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::User&#x60; can perform this action. 
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateUserRequest] :update_user_request 
  # @return [User]
  describe 'create_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_user
  # Delete user
  # Deletes a user.
  # @param id The ID of the Spree::User
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'delete_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user
  # Get user
  # Retrieves a user.
  # @param id The ID of the Spree::User
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'get_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_users
  # List users
  # Lists all users.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
  # @return [ListUsers200Response]
  describe 'list_users test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_user
  # Update user
  # Updates a user.  Only users with the &#x60;update&#x60; permission on the user can perform this action.
  # @param id The ID of the Spree::User
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateUserRequest] :update_user_request 
  # @return [User]
  describe 'update_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
