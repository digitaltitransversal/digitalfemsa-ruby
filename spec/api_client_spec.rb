require 'spec_helper'
require 'tempfile'

RSpec.describe DigitalFemsa::ApiClient do
  RequestOptionsStub = Struct.new(:params_encoder, :timeout)
  RequestStub = Struct.new(:headers, :body, :params, :options, :requested_url) do
    def url(value)
      self.requested_url = value
    end
  end

  let(:config) { DigitalFemsa::Configuration.new }
  let(:api_client) { described_class.new(config) }

  describe '#initialize' do
    it 'sets default headers' do
      expect(api_client.default_headers['Content-Type']).to eq('application/json')
      expect(api_client.default_headers['User-Agent']).to include('RubyBindings')
      expect(api_client.default_headers['Spin-Client-User-Agent']).to include('sdk_version=')
    end
  end

  describe '#json_mime?' do
    it 'returns true for json mime types and wildcard' do
      expect(api_client.json_mime?('application/json')).to be(true)
      expect(api_client.json_mime?('application/json; charset=UTF-8')).to be(true)
      expect(api_client.json_mime?('*/*')).to be(true)
    end

    it 'returns false for non-json mime types' do
      expect(api_client.json_mime?('text/plain')).to be(false)
    end
  end

  describe '#select_header_accept' do
    it 'returns nil when accepts are empty' do
      expect(api_client.select_header_accept([])).to be_nil
    end

    it 'prefers json accept when present' do
      expect(api_client.select_header_accept(%w[text/plain application/json])).to eq('application/json')
    end

    it 'joins values when json is not present' do
      expect(api_client.select_header_accept(%w[text/plain text/html])).to eq('text/plain,text/html')
    end
  end

  describe '#select_header_content_type' do
    it 'returns nil when content types are empty' do
      expect(api_client.select_header_content_type([])).to be_nil
    end

    it 'prefers json content type when present' do
      expect(api_client.select_header_content_type(%w[text/plain application/json])).to eq('application/json')
    end

    it 'returns the first content type when json is not present' do
      expect(api_client.select_header_content_type(%w[text/plain text/html])).to eq('text/plain')
    end
  end

  describe '#build_request_body' do
    it 'encodes urlencoded form body' do
      result = api_client.build_request_body(
        { 'Content-Type' => 'application/x-www-form-urlencoded' },
        { 'a' => '1', 'b' => '2' },
        nil
      )

      expect(result).to eq('a=1&b=2')
    end

    it 'builds multipart form body preserving arrays and nil values' do
      Tempfile.create('upload') do |file|
        file.write('content')
        file.flush

        result = api_client.build_request_body(
          { 'Content-Type' => 'multipart/form-data' },
          { file: file, amount: 100, tags: %w[a b], optional: nil },
          nil
        )

        expect(result[:file]).to be_a(Faraday::FilePart)
        expect(result[:amount]).to eq('100')
        expect(result[:tags]).to eq(%w[a b])
        expect(result[:optional]).to be_nil
      end
    end

    it 'serializes hash body as json' do
      result = api_client.build_request_body(
        { 'Content-Type' => 'application/json' },
        {},
        { order: 'ord_123' }
      )

      expect(result).to eq('{"order":"ord_123"}')
    end

    it 'returns body as-is when already string' do
      result = api_client.build_request_body(
        { 'Content-Type' => 'application/json' },
        {},
        '{"raw":true}'
      )

      expect(result).to eq('{"raw":true}')
    end
  end

  describe '#build_request' do
    it 'builds request with auth, query params, body and url' do
      config.access_token = 'token-123'
      config.timeout = 45

      request = RequestStub.new(nil, nil, nil, RequestOptionsStub.new(nil, nil), nil)

      api_client.build_request(
        :post,
        'charges',
        request,
        header_params: { 'Content-Type' => 'application/json' },
        query_params: { limit: 10 },
        form_params: {},
        body: { amount: 1000 },
        auth_names: ['bearerAuth']
      )

      expect(request.headers['Authorization']).to eq('Bearer token-123')
      expect(request.params).to eq(limit: 10)
      expect(request.body).to eq('{"amount":1000}')
      expect(request.requested_url).to eq('https://api.digitalfemsa.io/charges')
      expect(request.options.timeout).to eq(45)
    end
  end

  describe '#update_params_for_auth!' do
    it 'supports query auth settings' do
      allow(config).to receive(:auth_settings).and_return(
        'queryAuth' => {
          in: 'query',
          key: 'api_key',
          value: 'secret'
        }
      )

      headers = {}
      query = {}

      api_client.update_params_for_auth!(headers, query, ['queryAuth'])

      expect(query['api_key']).to eq('secret')
    end

    it 'raises error for unsupported auth location' do
      allow(config).to receive(:auth_settings).and_return(
        'badAuth' => {
          in: 'cookie',
          key: 'session',
          value: 'abc'
        }
      )

      expect do
        api_client.update_params_for_auth!({}, {}, ['badAuth'])
      end.to raise_error(ArgumentError, /Authentication token must be in `query` or `header`/)
    end
  end

  describe '#sanitize_filename' do
    it 'removes directory traversal from filename' do
      expect(api_client.sanitize_filename('../../tmp/file.txt')).to eq('file.txt')
      expect(api_client.sanitize_filename('C:\\tmp\\file.txt')).to eq('file.txt')
    end
  end

  describe '#build_collection_param' do
    it 'supports csv and multi formats' do
      expect(api_client.build_collection_param(%w[a b], :csv)).to eq('a,b')
      expect(api_client.build_collection_param(%w[a b], :multi)).to eq(%w[a b])
    end

    it 'raises for unknown collection format' do
      expect do
        api_client.build_collection_param(%w[a b], :unknown)
      end.to raise_error(RuntimeError, /unknown collection format/)
    end
  end

  describe '#call_api' do
    let(:opts) do
      {
        header_params: { 'Content-Type' => 'application/json' },
        query_params: {},
        form_params: {},
        auth_names: []
      }
    end

    it 'raises ApiError on timeout' do
      allow(api_client).to receive(:connection).and_raise(Faraday::TimeoutError)

      expect do
        api_client.call_api(:get, '/charges', opts)
      end.to raise_error(DigitalFemsa::ApiError, /Connection timed out/)
    end

    it 'raises ApiError on connection failed' do
      allow(api_client).to receive(:connection).and_raise(Faraday::ConnectionFailed)

      expect do
        api_client.call_api(:get, '/charges', opts)
      end.to raise_error(DigitalFemsa::ApiError, /Connection failed/)
    end

    it 'raises ApiError for non-successful responses' do
      response = instance_double(
        'FaradayResponse',
        success?: false,
        status: 401,
        headers: { 'Content-Type' => 'application/json' },
        body: '{"error":"unauthorized"}',
        reason_phrase: 'Unauthorized'
      )

      connection = instance_double('FaradayConnection')
      allow(connection).to receive(:get).and_yield(double('request')).and_return(response)
      allow(api_client).to receive(:connection).and_return(connection)
      allow(api_client).to receive(:build_request)

      expect do
        api_client.call_api(:get, '/charges', opts)
      end.to raise_error(DigitalFemsa::ApiError) { |error| expect(error.code).to eq(401) }
    end

    it 'returns status and headers on successful responses' do
      response = instance_double(
        'FaradayResponse',
        success?: true,
        status: 200,
        headers: { 'X-Request-Id' => 'req_123' },
        body: '{"ok":true}'
      )

      connection = instance_double('FaradayConnection')
      allow(connection).to receive(:get).and_yield(double('request')).and_return(response)
      allow(api_client).to receive(:connection).and_return(connection)
      allow(api_client).to receive(:build_request)

      data, status, headers = api_client.call_api(:get, '/charges', opts)

      expect(data).to be_nil
      expect(status).to eq(200)
      expect(headers).to eq('X-Request-Id' => 'req_123')
    end
  end
end
