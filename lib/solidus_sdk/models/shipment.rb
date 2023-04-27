=begin
#Solidus API

#The standard Solidus API.

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'date'
require 'time'

module SolidusSdk
  class Shipment
    attr_accessor :adjustments

    attr_accessor :cost

    attr_accessor :id

    attr_accessor :manifest

    attr_accessor :number

    attr_accessor :order_id

    attr_accessor :selected_shipping_rate

    attr_accessor :shipped_at

    attr_accessor :shipping_methods

    attr_accessor :shipping_rates

    attr_accessor :state

    attr_accessor :stock_location_name

    attr_accessor :tracking

    attr_accessor :tracking_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'adjustments' => :'adjustments',
        :'cost' => :'cost',
        :'id' => :'id',
        :'manifest' => :'manifest',
        :'number' => :'number',
        :'order_id' => :'order_id',
        :'selected_shipping_rate' => :'selected_shipping_rate',
        :'shipped_at' => :'shipped_at',
        :'shipping_methods' => :'shipping_methods',
        :'shipping_rates' => :'shipping_rates',
        :'state' => :'state',
        :'stock_location_name' => :'stock_location_name',
        :'tracking' => :'tracking',
        :'tracking_url' => :'tracking_url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'adjustments' => :'Array<Adjustment>',
        :'cost' => :'String',
        :'id' => :'Integer',
        :'manifest' => :'Array<ShipmentManifestInner>',
        :'number' => :'String',
        :'order_id' => :'String',
        :'selected_shipping_rate' => :'ShippingRate',
        :'shipped_at' => :'String',
        :'shipping_methods' => :'Array<ShippingMethod>',
        :'shipping_rates' => :'Array<ShippingRate>',
        :'state' => :'String',
        :'stock_location_name' => :'String',
        :'tracking' => :'String',
        :'tracking_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SolidusSdk::Shipment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SolidusSdk::Shipment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'adjustments')
        if (value = attributes[:'adjustments']).is_a?(Array)
          self.adjustments = value
        end
      end

      if attributes.key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'manifest')
        if (value = attributes[:'manifest']).is_a?(Array)
          self.manifest = value
        end
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'selected_shipping_rate')
        self.selected_shipping_rate = attributes[:'selected_shipping_rate']
      end

      if attributes.key?(:'shipped_at')
        self.shipped_at = attributes[:'shipped_at']
      end

      if attributes.key?(:'shipping_methods')
        if (value = attributes[:'shipping_methods']).is_a?(Array)
          self.shipping_methods = value
        end
      end

      if attributes.key?(:'shipping_rates')
        if (value = attributes[:'shipping_rates']).is_a?(Array)
          self.shipping_rates = value
        end
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'stock_location_name')
        self.stock_location_name = attributes[:'stock_location_name']
      end

      if attributes.key?(:'tracking')
        self.tracking = attributes[:'tracking']
      end

      if attributes.key?(:'tracking_url')
        self.tracking_url = attributes[:'tracking_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          adjustments == o.adjustments &&
          cost == o.cost &&
          id == o.id &&
          manifest == o.manifest &&
          number == o.number &&
          order_id == o.order_id &&
          selected_shipping_rate == o.selected_shipping_rate &&
          shipped_at == o.shipped_at &&
          shipping_methods == o.shipping_methods &&
          shipping_rates == o.shipping_rates &&
          state == o.state &&
          stock_location_name == o.stock_location_name &&
          tracking == o.tracking &&
          tracking_url == o.tracking_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [adjustments, cost, id, manifest, number, order_id, selected_shipping_rate, shipped_at, shipping_methods, shipping_rates, state, stock_location_name, tracking, tracking_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = SolidusSdk.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
