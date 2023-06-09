=begin
#solidus_subscriptions

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0-SNAPSHOT

=end

require 'date'
require 'time'

module SolidusSdk
  class PatchSubscriptionsApiV1SubscriptionsId200Response
    attr_accessor :line_items

    attr_accessor :shipping_address

    attr_accessor :billing_address

    attr_accessor :actionable_date

    attr_accessor :interval_units

    attr_accessor :interval_length

    attr_accessor :end_date

    attr_accessor :id

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :state

    attr_accessor :user_id

    attr_accessor :processing_state

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'line_items' => :'line_items',
        :'shipping_address' => :'shipping_address',
        :'billing_address' => :'billing_address',
        :'actionable_date' => :'actionable_date',
        :'interval_units' => :'interval_units',
        :'interval_length' => :'interval_length',
        :'end_date' => :'end_date',
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'state' => :'state',
        :'user_id' => :'user_id',
        :'processing_state' => :'processing_state'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'line_items' => :'Array<SubscriptionLineItemOutput>',
        :'shipping_address' => :'Object',
        :'billing_address' => :'Object',
        :'actionable_date' => :'Date',
        :'interval_units' => :'String',
        :'interval_length' => :'String',
        :'end_date' => :'Date',
        :'id' => :'Integer',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'state' => :'String',
        :'user_id' => :'Integer',
        :'processing_state' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'PatchSubscriptionsApiV1SubscriptionsId200ResponseAllOf',
      :'SubscriptionOutput'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SolidusSdk::PatchSubscriptionsApiV1SubscriptionsId200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SolidusSdk::PatchSubscriptionsApiV1SubscriptionsId200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'actionable_date')
        self.actionable_date = attributes[:'actionable_date']
      end

      if attributes.key?(:'interval_units')
        self.interval_units = attributes[:'interval_units']
      end

      if attributes.key?(:'interval_length')
        self.interval_length = attributes[:'interval_length']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'processing_state')
        self.processing_state = attributes[:'processing_state']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @actionable_date.nil?
        invalid_properties.push('invalid value for "actionable_date", actionable_date cannot be nil.')
      end

      if @interval_units.nil?
        invalid_properties.push('invalid value for "interval_units", interval_units cannot be nil.')
      end

      if @interval_length.nil?
        invalid_properties.push('invalid value for "interval_length", interval_length cannot be nil.')
      end

      if @end_date.nil?
        invalid_properties.push('invalid value for "end_date", end_date cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @processing_state.nil?
        invalid_properties.push('invalid value for "processing_state", processing_state cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @actionable_date.nil?
      return false if @interval_units.nil?
      interval_units_validator = EnumAttributeValidator.new('String', ["day", "week", "month", "year"])
      return false unless interval_units_validator.valid?(@interval_units)
      return false if @interval_length.nil?
      return false if @end_date.nil?
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["active", "canceled", "pending_cancellation", "inactive"])
      return false unless state_validator.valid?(@state)
      return false if @user_id.nil?
      return false if @processing_state.nil?
      processing_state_validator = EnumAttributeValidator.new('String', ["pending", "success", "failed"])
      return false unless processing_state_validator.valid?(@processing_state)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_units Object to be assigned
    def interval_units=(interval_units)
      validator = EnumAttributeValidator.new('String', ["day", "week", "month", "year"])
      unless validator.valid?(interval_units)
        fail ArgumentError, "invalid value for \"interval_units\", must be one of #{validator.allowable_values}."
      end
      @interval_units = interval_units
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["active", "canceled", "pending_cancellation", "inactive"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] processing_state Object to be assigned
    def processing_state=(processing_state)
      validator = EnumAttributeValidator.new('String', ["pending", "success", "failed"])
      unless validator.valid?(processing_state)
        fail ArgumentError, "invalid value for \"processing_state\", must be one of #{validator.allowable_values}."
      end
      @processing_state = processing_state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          line_items == o.line_items &&
          shipping_address == o.shipping_address &&
          billing_address == o.billing_address &&
          actionable_date == o.actionable_date &&
          interval_units == o.interval_units &&
          interval_length == o.interval_length &&
          end_date == o.end_date &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          state == o.state &&
          user_id == o.user_id &&
          processing_state == o.processing_state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [line_items, shipping_address, billing_address, actionable_date, interval_units, interval_length, end_date, id, created_at, updated_at, state, user_id, processing_state].hash
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
