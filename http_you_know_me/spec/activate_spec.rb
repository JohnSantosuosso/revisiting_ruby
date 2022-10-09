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
  end

end
