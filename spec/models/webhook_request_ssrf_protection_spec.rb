require 'spec_helper'

RSpec.describe DigitalFemsa::WebhookRequest, type: :model do
  describe 'SSRF Protection' do
    let(:valid_url) { 'https://example.com/webhook' }
    let(:webhook_request) { DigitalFemsa::WebhookRequest.new(url: valid_url, synchronous: false) }

    describe '#url=' do
      context 'with valid URLs' do
        it 'allows legitimate external URLs' do
          expect { webhook_request.url = 'https://api.example.com/webhook' }.not_to raise_error
        end

        it 'allows HTTP URLs' do
          expect { webhook_request.url = 'http://api.example.com/webhook' }.not_to raise_error
        end

        it 'allows URLs with standard ports' do
          expect { webhook_request.url = 'https://example.com:443/webhook' }.not_to raise_error
        end

        it 'allows URLs with non-standard but safe ports' do
          expect { webhook_request.url = 'https://example.com:9443/webhook' }.not_to raise_error
        end
      end

      context 'with localhost variations' do
        it 'blocks localhost' do
          expect { webhook_request.url = 'https://localhost/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks 127.0.0.1' do
          expect { webhook_request.url = 'https://127.0.0.1/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks 127.0.0.0' do
          expect { webhook_request.url = 'https://127.0.0.0/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks 0.0.0.0' do
          expect { webhook_request.url = 'https://0.0.0.0/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks IPv6 localhost' do
          expect { webhook_request.url = 'https://::1/webhook' }
            .to raise_error(ArgumentError, /must be a valid URL/)
        end

        it 'blocks 127.0.0.2' do
          expect { webhook_request.url = 'https://127.0.0.2/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks 127.1.1.1' do
          expect { webhook_request.url = 'https://127.1.1.1/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end
      end

      context 'with private IP ranges' do
        it 'blocks 10.x.x.x range' do
          expect { webhook_request.url = 'https://10.0.0.1/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks 192.168.x.x range' do
          expect { webhook_request.url = 'https://192.168.1.1/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks 172.16-31.x.x range' do
          expect { webhook_request.url = 'https://172.16.0.1/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks 172.31.x.x range' do
          expect { webhook_request.url = 'https://172.31.0.1/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks 169.254.x.x range (link-local)' do
          expect { webhook_request.url = 'https://169.254.169.254/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end
      end

      context 'with internal hostnames' do
        it 'blocks internal hostnames' do
          expect { webhook_request.url = 'https://internal-service/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks database hostnames' do
          expect { webhook_request.url = 'https://database.local/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks admin hostnames' do
          expect { webhook_request.url = 'https://admin-panel/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks api-gateway hostnames' do
          expect { webhook_request.url = 'https://api-gateway.internal/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end
      end

      context 'with DNS rebinding services' do
        it 'blocks xip.io' do
          expect { webhook_request.url = 'https://127.0.0.1.xip.io/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks nip.io' do
          expect { webhook_request.url = 'https://192.168.1.1.nip.io/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks localtest.me' do
          expect { webhook_request.url = 'https://localtest.me/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end
      end

      context 'with suspicious hostname patterns' do
        it 'blocks internal- prefix' do
          expect { webhook_request.url = 'https://internal-api/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks dev- prefix' do
          expect { webhook_request.url = 'https://dev-service/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end

        it 'blocks db- prefix' do
          expect { webhook_request.url = 'https://db-primary/webhook' }
            .to raise_error(ArgumentError, /hostname points to restricted network resource/)
        end
      end

      context 'with restricted ports' do
        it 'blocks SSH port' do
          expect { webhook_request.url = 'https://example.com:22/webhook' }
            .to raise_error(ArgumentError, /port is not allowed/)
        end

        it 'blocks database ports' do
          expect { webhook_request.url = 'https://example.com:3306/webhook' }
            .to raise_error(ArgumentError, /port is not allowed/)
        end

        it 'blocks Redis port' do
          expect { webhook_request.url = 'https://example.com:6379/webhook' }
            .to raise_error(ArgumentError, /port is not allowed/)
        end

        it 'blocks Elasticsearch port' do
          expect { webhook_request.url = 'https://example.com:9200/webhook' }
            .to raise_error(ArgumentError, /port is not allowed/)
        end

        it 'blocks MongoDB port' do
          expect { webhook_request.url = 'https://example.com:27017/webhook' }
            .to raise_error(ArgumentError, /port is not allowed/)
        end

        it 'allows standard HTTP port' do
          expect { webhook_request.url = 'https://example.com:80/webhook' }.not_to raise_error
        end

        it 'allows standard HTTPS port' do
          expect { webhook_request.url = 'https://example.com:443/webhook' }.not_to raise_error
        end
      end

      context 'with invalid schemes' do
        it 'blocks ftp scheme' do
          expect { webhook_request.url = 'ftp://example.com/webhook' }
            .to raise_error(ArgumentError, /must use http or https scheme/)
        end

        it 'blocks file scheme' do
          expect { webhook_request.url = 'file:///etc/passwd' }
            .to raise_error(ArgumentError, /must use http or https scheme/)
        end

        it 'blocks missing scheme' do
          expect { webhook_request.url = '//example.com/webhook' }
            .to raise_error(ArgumentError, /must use http or https scheme/)
        end
      end

      context 'with malformed URLs' do
        it 'blocks invalid URL format' do
          expect { webhook_request.url = 'not-a-url' }
            .to raise_error(ArgumentError, /must use http or https scheme/)
        end

        it 'blocks empty hostname' do
          expect { webhook_request.url = 'https:///webhook' }
            .to raise_error(ArgumentError, /hostname cannot be empty/)
        end

        it 'blocks nil URL' do
          expect { webhook_request.url = nil }
            .to raise_error(ArgumentError, /url cannot be nil/)
        end
      end
    end

    describe '#valid?' do
      it 'returns true for valid URLs' do
        webhook_request.url = 'https://example.com/webhook'
        expect(webhook_request.valid?).to be true
      end

      it 'returns false for localhost URLs' do
        webhook_request.instance_variable_set(:@url, 'https://localhost/webhook')
        expect(webhook_request.valid?).to be false
      end

      it 'returns false for private IP URLs' do
        webhook_request.instance_variable_set(:@url, 'https://192.168.1.1/webhook')
        expect(webhook_request.valid?).to be false
      end

      it 'returns false for restricted ports' do
        webhook_request.instance_variable_set(:@url, 'https://example.com:22/webhook')
        expect(webhook_request.valid?).to be false
      end

      it 'returns false for invalid schemes' do
        webhook_request.instance_variable_set(:@url, 'ftp://example.com/webhook')
        expect(webhook_request.valid?).to be false
      end
    end

    describe '#list_invalid_properties' do
      it 'returns empty array for valid URLs' do
        webhook_request.url = 'https://example.com/webhook'
        expect(webhook_request.list_invalid_properties).to be_empty
      end

      it 'returns error for localhost URLs' do
        webhook_request.instance_variable_set(:@url, 'https://localhost/webhook')
        properties = webhook_request.list_invalid_properties
        expect(properties).to include(/hostname points to restricted network resource/)
      end

      it 'returns error for private IP URLs' do
        webhook_request.instance_variable_set(:@url, 'https://192.168.1.1/webhook')
        properties = webhook_request.list_invalid_properties
        expect(properties).to include(/hostname points to restricted network resource/)
      end

      it 'returns error for restricted ports' do
        webhook_request.instance_variable_set(:@url, 'https://example.com:22/webhook')
        properties = webhook_request.list_invalid_properties
        expect(properties).to include(/port is not allowed/)
      end

      it 'returns error for invalid schemes' do
        webhook_request.instance_variable_set(:@url, 'ftp://example.com/webhook')
        properties = webhook_request.list_invalid_properties
        expect(properties).to include(/must use http or https scheme/)
      end
    end
  end
end
