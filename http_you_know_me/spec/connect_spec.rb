require './lib/connect'

RSpec.describe Connect do
  before(:each) do
    @connect = Connect.new
  end

  describe "#initialize" do
    it 'is an instance of Connect' do
      expect(@connect).to be_instance_of(Connect)
    end
  end

end