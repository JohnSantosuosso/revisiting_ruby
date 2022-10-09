require './lib/activate'

RSpec.describe Activate do
  before(:each) do
    @activation = Activate.new('/')
  end

  describe "#initialize" do
    it 'is an instance of Activate' do
      expect(@activation).to be_instance_of(Activate)
    end
  end
end
