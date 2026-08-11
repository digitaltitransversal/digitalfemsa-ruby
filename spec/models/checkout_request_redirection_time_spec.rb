require 'spec_helper'

RSpec.describe DigitalFemsa::CheckoutRequest, type: :model do
  describe 'redirection_time field' do
    let(:valid_attributes) do
      {
        allowed_payment_methods: %w[card cash],
        expires_at: 1_700_000_000,
        name: 'Test checkout',
        type: 'HostedPayment',
        redirection_time: 30
      }
    end

    it 'declares the attribute via attr_accessor' do
      expect(DigitalFemsa::CheckoutRequest.instance_methods).to include(:redirection_time, :redirection_time=)
    end

    it 'maps the attribute in attribute_map' do
      expect(DigitalFemsa::CheckoutRequest.attribute_map).to have_key(:redirection_time)
    end

    it 'declares the attribute type in openapi_types' do
      expect(DigitalFemsa::CheckoutRequest.openapi_types).to have_key(:redirection_time)
    end

    it 'accepts redirection_time in the constructor' do
      instance = DigitalFemsa::CheckoutRequest.new(valid_attributes)
      expect(instance.redirection_time).to eq(30)
    end

    it 'serializes redirection_time in to_hash' do
      instance = DigitalFemsa::CheckoutRequest.new(valid_attributes)
      expect(instance.to_hash[:redirection_time]).to eq(30)
    end

    it 'round-trips redirection_time through build_from_hash' do
      instance = DigitalFemsa::CheckoutRequest.new(valid_attributes)
      rebuilt = DigitalFemsa::CheckoutRequest.build_from_hash(instance.to_hash)
      expect(rebuilt.redirection_time).to eq(30)
    end

    it 'includes redirection_time in equality comparison' do
      instance = DigitalFemsa::CheckoutRequest.new(valid_attributes)
      other = DigitalFemsa::CheckoutRequest.new(valid_attributes)
      expect(instance).to eq(other)

      other.redirection_time = 60
      expect(instance).not_to eq(other)
    end

    it 'includes redirection_time in hash' do
      instance = DigitalFemsa::CheckoutRequest.new(valid_attributes)
      other = DigitalFemsa::CheckoutRequest.new(valid_attributes)
      expect(instance.hash).to eq(other.hash)

      other.redirection_time = 60
      expect(instance.hash).not_to eq(other.hash)
    end
  end
end
