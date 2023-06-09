=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SolidusSdk::TaxonsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaxonsApi' do
  before do
    # run before each test
    @api_instance = SolidusSdk::TaxonsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxonsApi' do
    it 'should create an instance of TaxonsApi' do
      expect(@api_instance).to be_instance_of(SolidusSdk::TaxonsApi)
    end
  end

  # unit tests for create_taxonomy_taxon
  # Create taxonomy taxon
  # Creates a taxon for a taxonomy.  Only users with the &#x60;create&#x60; permission on &#x60;Spree::Taxon&#x60; can perform this action.
  # @param taxonomy_id The id of the taxonomy for which the new taxon will be added
  # @param [Hash] opts the optional parameters
  # @option opts [CreateTaxonomyTaxonRequest] :create_taxonomy_taxon_request 
  # @return [Taxon]
  describe 'create_taxonomy_taxon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_taxonomy_taxon
  # Delete taxonomy taxon
  # Deletes a taxonomy&#39;s taxon.
  # @param taxonomy_id The id of the taxon&#39;s taxonomy
  # @param id The id of the taxon
  # @param [Hash] opts the optional parameters
  # @return [Taxon]
  describe 'delete_taxonomy_taxon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_taxonomy_taxon
  # Get taxonomy taxon
  # Retrieves a taxonomy&#39;s taxon.
  # @param taxonomy_id The id of the taxon&#39;s taxonomy
  # @param id The id of the taxon
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_taxonomy_taxon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_taxonomy_taxons
  # List taxonomy taxons
  # Lists a taxonomy&#39;s taxons.
  # @param taxonomy_id The id of the taxonomy for which the new taxon will be added
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
  # @return [ListTaxonomyTaxons200Response]
  describe 'list_taxonomy_taxons test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_taxons
  # List taxons
  # Lists all taxons.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @option opts [Object] :q Allows to query results based on search filters provided by Ransack (https://github.com/activerecord-hackery/ransack/).
  # @option opts [Boolean] :without_children When set to &#x60;true&#x60;, it won&#39;t recursively return all the taxons&#39; children.
  # @return [ListTaxonomyTaxons200Response]
  describe 'list_taxons test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_taxonomy_taxon
  # Update taxonomy taxon
  # Updates a taxonomy&#39;s taxon.  Only users with the &#x60;update&#x60; permission on the taxon can perform this action.
  # @param taxonomy_id The id of the taxon&#39;s taxonomy
  # @param id The id of the taxon
  # @param [Hash] opts the optional parameters
  # @option opts [CreateTaxonomyTaxonRequest] :create_taxonomy_taxon_request 
  # @return [Taxon]
  describe 'update_taxonomy_taxon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
