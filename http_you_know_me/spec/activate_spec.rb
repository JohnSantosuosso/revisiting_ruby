require './lib/activate'

RSpec.describe Activate do
  before(:each) do
    @activation = Activate.new('A')
  end

  describe "#initialize" do
    it 'is an instance of Activate' do
      expect(@activation).to be_instance_of(Activate)
    end
  end

  describe "#validated request inside of initialization" do
    it 'validates a request, happy path' do
      expect(@activation.validated_request).to eql('debug_info')
    end

    it 'returns a bad request, sad path' do
      @activation_1 = Activate.new('G')
      expect(@activation_1.validated_request).to eql('bad_request')
    end

    it 'returns a response, happy path' do
      expect(@activation.response).to eql("<pre>Verb: POST\nPath: /\nProtocol: HTTP/1.1\nHost: 127.0.0.1\nPort: 9292\nOrigin: 127.0.0.1\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\n</pre>")
    end
  end

end
