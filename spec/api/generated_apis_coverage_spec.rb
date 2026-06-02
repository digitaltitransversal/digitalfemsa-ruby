require 'spec_helper'
require 'logger'

RSpec.describe 'Generated APIs coverage smoke tests' do
  api_classes = DigitalFemsa.constants.filter_map do |const_name|
    constant = DigitalFemsa.const_get(const_name)
    next unless constant.is_a?(Class)
    next unless constant.name.end_with?('Api')

    constant
  rescue NameError
    nil
  end.sort_by(&:name)

  required_arg_value = lambda do |name|
    name_str = name.to_s

    if name_str == 'id' || name_str.end_with?('_id')
      'id_123'
    elsif name_str.include?('request')
      {}
    elsif name_str.include?('amount')
      100
    elsif name_str.include?('date')
      '2024-01-01'
    else
      'value'
    end
  end

  optional_arg_value = lambda do |name|
    unless name.to_s == 'opts'
      return required_arg_value.call(name)
    end

    {
      accept_language: 'es',
      x_child_company_id: 'child_company_123',
      limit: 20,
      search: 'test',
      _next: 'next_token',
      previous: 'prev_token'
    }
  end

  args_for = lambda do |method|
    method.parameters.map do |kind, name|
      kind == :opt ? optional_arg_value.call(name) : required_arg_value.call(name)
    end
  end

  let(:config) do
    double('Configuration', debugging: false, client_side_validation: true, logger: Logger.new(nil))
  end

  let(:api_client) do
    double('ApiClient').tap do |client|
      allow(client).to receive(:config).and_return(config)
      allow(client).to receive(:select_header_accept).and_return('application/json')
      allow(client).to receive(:select_header_content_type).and_return('application/json')
      allow(client).to receive(:object_to_http_body) { |body| body }
      allow(client).to receive(:call_api).and_return([{ 'ok' => true }, 200, { 'X-Test' => '1' }])
    end
  end

  api_classes.each do |klass|
    describe klass.name do
      let(:api_instance) { klass.new(api_client) }

      it 'creates an instance with injected api_client' do
        expect(api_instance).to be_instance_of(klass)
        expect(api_instance.api_client).to eq(api_client)
      end

      klass.instance_methods(false).sort.each do |method_name|
        next if method_name == :initialize
        next if %i[api_client api_client=].include?(method_name)

        it "invokes ##{method_name}" do
          method = klass.instance_method(method_name)
          args = args_for.call(method)

          result = api_instance.public_send(method_name, *args)

          if method_name.to_s.end_with?('_with_http_info')
            expect(result).to eq([{ 'ok' => true }, 200, { 'X-Test' => '1' }])
          else
            expect(result).to eq('ok' => true)
          end
        end
      end
    end
  end
end
