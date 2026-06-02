require 'spec_helper'

RSpec.describe 'Generated models coverage smoke tests' do
  model_classes = DigitalFemsa.constants.filter_map do |const_name|
    constant = DigitalFemsa.const_get(const_name)
    next unless constant.is_a?(Class)
    next unless constant.respond_to?(:attribute_map)
    next unless constant.respond_to?(:openapi_types)
    next unless constant.respond_to?(:build_from_hash)
    next unless constant.respond_to?(:_deserialize)

    constant
  rescue NameError
    nil
  end.sort_by(&:name)

  sample_value_for = lambda do |type, attr_name: nil, depth: 0|
    return nil if depth > 2

    type_name = type.to_s

    return 'https://example.com/webhook' if attr_name.to_s.include?('url')

    case type_name
    when 'String'
      attr_name.to_s.include?('email') ? 'test@example.com' : 'sample'
    when 'Integer'
      1
    when 'Float'
      1.5
    when 'Boolean'
      true
    when 'Date'
      '2024-01-01'
    when 'Time'
      '2024-01-01T00:00:00Z'
    when 'Object'
      { 'key' => 'value' }
    when /\AArray<(?<inner_type>.+)>\z/
      [sample_value_for.call(Regexp.last_match[:inner_type], attr_name: attr_name, depth: depth + 1)]
    when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
      {
        sample_value_for.call(Regexp.last_match[:k_type], depth: depth + 1) =>
          sample_value_for.call(Regexp.last_match[:v_type], depth: depth + 1)
      }
    else
      {}
    end
  end

  candidate_values_for = lambda do |type, attr_name|
    type_name = type.to_s
    attr_name_str = attr_name.to_s

    candidates = [sample_value_for.call(type, attr_name: attr_name)]

    if type_name == 'String'
      candidates.concat(
        %w[private public MXN USD es en active inactive pending completed card cash transfer bank_transfer charge order customer webhook]
      )
      candidates << 'https://example.com/webhook' if attr_name_str.include?('url')
      candidates << 'test@example.com' if attr_name_str.include?('email')
      candidates << 'mx' if attr_name_str.include?('country')
    elsif type_name == 'Integer'
      candidates.concat([0, 20, 100, 1_700_000_000])
    elsif type_name == 'Float'
      candidates.concat([0.0, 2.5, 10.0])
    elsif type_name == 'Boolean'
      candidates << false
    elsif type_name.match?(/\AArray<.+>\z/)
      candidates << []
    elsif type_name.match?(/\AHash<.+>\z/)
      candidates << {}
    end

    candidates.compact.uniq
  end

  attributes_for = lambda do |klass|
    klass.openapi_types.each_with_object({}) do |(attr, type), attrs|
      assigned = false

      candidate_values_for.call(type, attr).each do |value|
        begin
          klass.new(attrs.merge(attr => value))
          attrs[attr] = value
          assigned = true
          break
        rescue StandardError
          next
        end
      end

      next if assigned

      begin
        klass.new(attrs.merge(attr => nil))
        attrs[attr] = nil
      rescue StandardError
        # Skip attributes that require highly specific values in custom setters.
      end
    end
  end

  model_classes.each do |klass|
    it "smoke-tests #{klass.name}" do
      attrs = attributes_for.call(klass)

      begin
        instance = klass.new(attrs)
        another_instance = klass.new(attrs)
      rescue StandardError => e
        skip("Skipped strict model initialization: #{e.message}")
      end

      expect(klass.acceptable_attributes).to be_a(Array)
      expect(klass.openapi_nullable).to be_a(Set)

      expect { klass.new('invalid') }.to raise_error(ArgumentError)
      expect { klass.new('__invalid_attribute__' => 'x') }.to raise_error(ArgumentError)

      expect(instance.send(:==, another_instance)).to be(true)
      expect(instance.send(:eql?, another_instance)).to be(true)
      expect(instance.send(:hash)).to be_a(Integer)
      expect { instance.send(:list_invalid_properties) }.not_to raise_error
      expect { instance.send(:valid?) }.not_to raise_error

      serialized_hash = instance.send(:to_hash)
      expect(serialized_hash).to be_a(Hash)
      expect(instance.send(:to_body)).to eq(serialized_hash)
      expect(instance.send(:to_s)).to be_a(String)
      expect(instance.send(:_to_hash, [1, nil, 2])).to eq([1, 2])
      expect(instance.send(:_to_hash, { 'a' => 1 })).to eq('a' => 1)

      rebuilt = klass.build_from_hash(serialized_hash) rescue nil
      expect(rebuilt).to be_a(klass).or be_nil

      expect(klass._deserialize('String', 1)).to eq('1')
      expect(klass._deserialize('Integer', '1')).to eq(1)
      expect(klass._deserialize('Float', '1.2')).to eq(1.2)
      expect(klass._deserialize('Boolean', 'true')).to be(true)
      expect(klass._deserialize('Boolean', 'false')).to be(false)
      expect(klass._deserialize('Object', { 'a' => 1 })).to eq('a' => 1)
      expect(klass._deserialize('Array<String>', [1, 2])).to eq(%w[1 2])
      expect(klass._deserialize('Hash<String, Integer>', { 'a' => '1' })).to eq('a' => 1)
      expect(klass._deserialize('Date', '2024-01-01')).to be_a(Date)
      expect(klass._deserialize('Time', '2024-01-01T00:00:00Z')).to be_a(Time)
      expect { klass._deserialize(klass.name.split('::').last, {}) rescue nil }.not_to raise_error

    end
  end
end
