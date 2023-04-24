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
  class OrderSmall
    attr_accessor :additional_tax_total

    attr_accessor :adjustment_total

    attr_accessor :canceler_id

    attr_accessor :channel

    attr_accessor :checkout_steps

    attr_accessor :completed_at

    attr_accessor :covered_by_store_credit

    attr_accessor :created_at

    attr_accessor :currency

    attr_accessor :display_additional_tax_total

    attr_accessor :display_included_tax_total

    attr_accessor :display_item_total

    attr_accessor :display_order_total_after_store_credit

    attr_accessor :display_ship_total

    attr_accessor :display_store_credit_remaining_after_capture

    attr_accessor :display_tax_total

    attr_accessor :display_total

    attr_accessor :display_total_applicable_store_credit

    attr_accessor :display_total_available_store_credit

    attr_accessor :email

    attr_accessor :id

    attr_accessor :included_tax_total

    attr_accessor :item_total

    attr_accessor :number

    attr_accessor :order_total_after_store_credit

    attr_accessor :payment_state

    attr_accessor :payment_total

    attr_accessor :ship_total

    attr_accessor :shipment_state

    attr_accessor :special_instructions

    attr_accessor :state

    attr_accessor :tax_total

    attr_accessor :token

    attr_accessor :total

    attr_accessor :total_applicable_store_credit

    attr_accessor :total_quantity

    attr_accessor :updated_at

    attr_accessor :user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'additional_tax_total' => :'additional_tax_total',
        :'adjustment_total' => :'adjustment_total',
        :'canceler_id' => :'canceler_id',
        :'channel' => :'channel',
        :'checkout_steps' => :'checkout_steps',
        :'completed_at' => :'completed_at',
        :'covered_by_store_credit' => :'covered_by_store_credit',
        :'created_at' => :'created_at',
        :'currency' => :'currency',
        :'display_additional_tax_total' => :'display_additional_tax_total',
        :'display_included_tax_total' => :'display_included_tax_total',
        :'display_item_total' => :'display_item_total',
        :'display_order_total_after_store_credit' => :'display_order_total_after_store_credit',
        :'display_ship_total' => :'display_ship_total',
        :'display_store_credit_remaining_after_capture' => :'display_store_credit_remaining_after_capture',
        :'display_tax_total' => :'display_tax_total',
        :'display_total' => :'display_total',
        :'display_total_applicable_store_credit' => :'display_total_applicable_store_credit',
        :'display_total_available_store_credit' => :'display_total_available_store_credit',
        :'email' => :'email',
        :'id' => :'id',
        :'included_tax_total' => :'included_tax_total',
        :'item_total' => :'item_total',
        :'number' => :'number',
        :'order_total_after_store_credit' => :'order_total_after_store_credit',
        :'payment_state' => :'payment_state',
        :'payment_total' => :'payment_total',
        :'ship_total' => :'ship_total',
        :'shipment_state' => :'shipment_state',
        :'special_instructions' => :'special_instructions',
        :'state' => :'state',
        :'tax_total' => :'tax_total',
        :'token' => :'token',
        :'total' => :'total',
        :'total_applicable_store_credit' => :'total_applicable_store_credit',
        :'total_quantity' => :'total_quantity',
        :'updated_at' => :'updated_at',
        :'user_id' => :'user_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'additional_tax_total' => :'String',
        :'adjustment_total' => :'String',
        :'canceler_id' => :'Integer',
        :'channel' => :'String',
        :'checkout_steps' => :'Array<String>',
        :'completed_at' => :'String',
        :'covered_by_store_credit' => :'Boolean',
        :'created_at' => :'String',
        :'currency' => :'String',
        :'display_additional_tax_total' => :'String',
        :'display_included_tax_total' => :'String',
        :'display_item_total' => :'String',
        :'display_order_total_after_store_credit' => :'String',
        :'display_ship_total' => :'String',
        :'display_store_credit_remaining_after_capture' => :'String',
        :'display_tax_total' => :'String',
        :'display_total' => :'String',
        :'display_total_applicable_store_credit' => :'String',
        :'display_total_available_store_credit' => :'String',
        :'email' => :'String',
        :'id' => :'Integer',
        :'included_tax_total' => :'String',
        :'item_total' => :'String',
        :'number' => :'String',
        :'order_total_after_store_credit' => :'String',
        :'payment_state' => :'String',
        :'payment_total' => :'String',
        :'ship_total' => :'String',
        :'shipment_state' => :'String',
        :'special_instructions' => :'String',
        :'state' => :'String',
        :'tax_total' => :'String',
        :'token' => :'String',
        :'total' => :'String',
        :'total_applicable_store_credit' => :'String',
        :'total_quantity' => :'Integer',
        :'updated_at' => :'String',
        :'user_id' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SolidusSdk::OrderSmall` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SolidusSdk::OrderSmall`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'additional_tax_total')
        self.additional_tax_total = attributes[:'additional_tax_total']
      end

      if attributes.key?(:'adjustment_total')
        self.adjustment_total = attributes[:'adjustment_total']
      end

      if attributes.key?(:'canceler_id')
        self.canceler_id = attributes[:'canceler_id']
      end

      if attributes.key?(:'channel')
        self.channel = attributes[:'channel']
      end

      if attributes.key?(:'checkout_steps')
        if (value = attributes[:'checkout_steps']).is_a?(Array)
          self.checkout_steps = value
        end
      end

      if attributes.key?(:'completed_at')
        self.completed_at = attributes[:'completed_at']
      end

      if attributes.key?(:'covered_by_store_credit')
        self.covered_by_store_credit = attributes[:'covered_by_store_credit']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'display_additional_tax_total')
        self.display_additional_tax_total = attributes[:'display_additional_tax_total']
      end

      if attributes.key?(:'display_included_tax_total')
        self.display_included_tax_total = attributes[:'display_included_tax_total']
      end

      if attributes.key?(:'display_item_total')
        self.display_item_total = attributes[:'display_item_total']
      end

      if attributes.key?(:'display_order_total_after_store_credit')
        self.display_order_total_after_store_credit = attributes[:'display_order_total_after_store_credit']
      end

      if attributes.key?(:'display_ship_total')
        self.display_ship_total = attributes[:'display_ship_total']
      end

      if attributes.key?(:'display_store_credit_remaining_after_capture')
        self.display_store_credit_remaining_after_capture = attributes[:'display_store_credit_remaining_after_capture']
      end

      if attributes.key?(:'display_tax_total')
        self.display_tax_total = attributes[:'display_tax_total']
      end

      if attributes.key?(:'display_total')
        self.display_total = attributes[:'display_total']
      end

      if attributes.key?(:'display_total_applicable_store_credit')
        self.display_total_applicable_store_credit = attributes[:'display_total_applicable_store_credit']
      end

      if attributes.key?(:'display_total_available_store_credit')
        self.display_total_available_store_credit = attributes[:'display_total_available_store_credit']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'included_tax_total')
        self.included_tax_total = attributes[:'included_tax_total']
      end

      if attributes.key?(:'item_total')
        self.item_total = attributes[:'item_total']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'order_total_after_store_credit')
        self.order_total_after_store_credit = attributes[:'order_total_after_store_credit']
      end

      if attributes.key?(:'payment_state')
        self.payment_state = attributes[:'payment_state']
      end

      if attributes.key?(:'payment_total')
        self.payment_total = attributes[:'payment_total']
      end

      if attributes.key?(:'ship_total')
        self.ship_total = attributes[:'ship_total']
      end

      if attributes.key?(:'shipment_state')
        self.shipment_state = attributes[:'shipment_state']
      end

      if attributes.key?(:'special_instructions')
        self.special_instructions = attributes[:'special_instructions']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'tax_total')
        self.tax_total = attributes[:'tax_total']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'total_applicable_store_credit')
        self.total_applicable_store_credit = attributes[:'total_applicable_store_credit']
      end

      if attributes.key?(:'total_quantity')
        self.total_quantity = attributes[:'total_quantity']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
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
          additional_tax_total == o.additional_tax_total &&
          adjustment_total == o.adjustment_total &&
          canceler_id == o.canceler_id &&
          channel == o.channel &&
          checkout_steps == o.checkout_steps &&
          completed_at == o.completed_at &&
          covered_by_store_credit == o.covered_by_store_credit &&
          created_at == o.created_at &&
          currency == o.currency &&
          display_additional_tax_total == o.display_additional_tax_total &&
          display_included_tax_total == o.display_included_tax_total &&
          display_item_total == o.display_item_total &&
          display_order_total_after_store_credit == o.display_order_total_after_store_credit &&
          display_ship_total == o.display_ship_total &&
          display_store_credit_remaining_after_capture == o.display_store_credit_remaining_after_capture &&
          display_tax_total == o.display_tax_total &&
          display_total == o.display_total &&
          display_total_applicable_store_credit == o.display_total_applicable_store_credit &&
          display_total_available_store_credit == o.display_total_available_store_credit &&
          email == o.email &&
          id == o.id &&
          included_tax_total == o.included_tax_total &&
          item_total == o.item_total &&
          number == o.number &&
          order_total_after_store_credit == o.order_total_after_store_credit &&
          payment_state == o.payment_state &&
          payment_total == o.payment_total &&
          ship_total == o.ship_total &&
          shipment_state == o.shipment_state &&
          special_instructions == o.special_instructions &&
          state == o.state &&
          tax_total == o.tax_total &&
          token == o.token &&
          total == o.total &&
          total_applicable_store_credit == o.total_applicable_store_credit &&
          total_quantity == o.total_quantity &&
          updated_at == o.updated_at &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [additional_tax_total, adjustment_total, canceler_id, channel, checkout_steps, completed_at, covered_by_store_credit, created_at, currency, display_additional_tax_total, display_included_tax_total, display_item_total, display_order_total_after_store_credit, display_ship_total, display_store_credit_remaining_after_capture, display_tax_total, display_total, display_total_applicable_store_credit, display_total_available_store_credit, email, id, included_tax_total, item_total, number, order_total_after_store_credit, payment_state, payment_total, ship_total, shipment_state, special_instructions, state, tax_total, token, total, total_applicable_store_credit, total_quantity, updated_at, user_id].hash
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
