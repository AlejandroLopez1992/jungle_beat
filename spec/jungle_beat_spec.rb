require 'rspec'
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do

  it 'exists' do 
    jb = JungleBeat.new

    expect(jb).to be_instance_of(JungleBeat)
  end
end