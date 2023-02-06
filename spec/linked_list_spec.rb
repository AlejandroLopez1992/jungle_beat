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

  it 'append method works as intended' do 
    list = LinkedList.new
    list.append("doop")
    list.append("bop")

    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop, bop")
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

  it 'is empty? is false if list has elements' do
    list = LinkedList.new
    list.append("doop")

    expect(list.empty?).to be(false)
  end

  it 'can count the elements in the linked list' do
    list = LinkedList.new
    list.append("doop")
    list.append("doop")
    list.append("doop")
    list.append("doop")
    list.append("doop")


    expect(list.count).to eq(5)
  end

  it 'count provides 0 if no objects are in list' do
    list = LinkedList.new

    expect(list.count).to eq(0)
  end

  it 'can be converted to string' do
    list = LinkedList.new
    list.append("doop")
    list.append("doop")
    list.append("doop")
    list.append("bam")
    expect(list.to_string).to eq("doop, doop, doop, bam")
  end

  it 'has a prepend method' do
    list = LinkedList.new
    list.append("doop")
    list.append("bam")
    list.prepend("pop")
    list.prepend("doo")

    expect(list.to_string).to eq("doo, pop, doop, bam")
    expect(list.count).to eq(4)
  end

  it 'prepend works with first object inserted' do
    list = LinkedList.new
    list.prepend("bop")

    expect(list.to_string).to eq("bop")
  end

  it 'has an insert method' do
    list = LinkedList.new
    list.append("doop")
    list.append("bam")
    list.prepend("pop")
    list.prepend("doo")
    list.insert(2 , "phop")


    expect(list.to_string).to eq("doo, pop, phop, doop, bam")
    expect(list.count).to eq(5)
  end

  it 'insert does not work if no objects are in list' do
    list = LinkedList.new

    expect(list.insert(1, "zoom")).to eq("I'm empty, use append or prepend instead")
  end

  it 'insert works with index position 0' do
    list = LinkedList.new
    list.append("doop")
    list.append("bam")
    list.insert(0 , "phop")

    expect(list.to_string).to eq("phop, doop, bam")
    expect(list.count).to eq(3)
  end

  it 'insert gives feedback if index given is > elements in list' do
    list = LinkedList.new
    list.append("doop")
    list.append("bam")

    expect(list.insert(6 , "phop")).to eq("Error, given index position is > than nodes in list")
  end

  it 'find method works as intended' do
    list = LinkedList.new
    list.append("doop")
    list.append("bam")
    list.prepend("pop")
    list.prepend("doop")
    list.prepend("bop")

    expect(list.to_string).to eq("bop, doop, pop, doop, bam")
    expect(list.find(2, 1)).to eq("pop")
    expect(list.find(1, 3)).to eq("doop, pop, doop")
    expect(list.find(0, 4)).to eq("bop, doop, pop, doop")
  end

  it 'find method returns error if list is empty' do
    list = LinkedList.new

    expect(list.find(0, 1)).to eq("Error, list is empty")
  end

  it 'find method returns error if element for position or beats is > list size' do
    list = LinkedList.new
    list.append("doop")
    list.append("bam")

    expect(list.find(3,1)).to eq("Error, position or beats is greater than nodes in list")
    expect(list.find(0,5)).to eq("Error, position or beats is greater than nodes in list")
  end

  it 'include? works as intended' do
    list = LinkedList.new
    list.append("doop")
    list.append("bam")
    list.prepend("pop")
    list.prepend("doop")

    expect(list.to_string).to eq("doop, pop, doop, bam")
    expect(list.include?("zing")).to eq(false)
    expect(list.include?("pop")).to eq(true)
  end

  it 'pop method works as intended' do
    list = LinkedList.new
    list.append("doop")
    list.append("bam")
    list.prepend("pop")
    list.prepend("doop")

    expect(list.to_string).to eq("doop, pop, doop, bam")
    expect(list.pop).to eq("bam")
    expect(list.pop).to eq("doop")
  end

end
