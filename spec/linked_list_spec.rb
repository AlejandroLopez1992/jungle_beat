require 'rspec'
require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do

  it 'exits' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end

  it 'has initial head value of nil' do
    list = LinkedList.new
    list.head

    expect(list.head).to eq(nil)
  end

  it 'has an append method' do
    list = LinkedList.new
    list.append("doop")

    expect(list.append("doop")).to be_instance_of(Node)
  end

  it "has nil value at tail" do
    list = LinkedList.new
    list.append("doop")
    list.head.next_node

    expect(list.head.next_node).to eq(nil)
  end

  it 'is empty? method works' do
    list = LinkedList.new

    expect(list.empty?).to be(true)
  end

  it 'is empty? round 2' do
    list = LinkedList.new
    list.append("doop")

    expect(list.empty?).to be(false)
  end
  it 'can count the elements in the linked list' do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq(1)
  end
end
