require 'rspec'
require './lib/node'

RSpec.describe Node do

  it 'exists' do
    node = Node.new("plop")

    expect(node).to be_instance_of(Node)
  end

  it 'has initial data' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
  end

  it 'can add next_node' do
    node = Node.new("plop")
    node.next_node

    expect(node.next_node).to eq(nil)
  end

end