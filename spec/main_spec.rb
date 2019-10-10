require_relative '../bin/main.rb'

describe '#valid_name' do 
let(:name) { 'Sofi' }
  it "returns a name of the player" do 
    expect(valid_name(name)).to eql('Sofi')
  end
end