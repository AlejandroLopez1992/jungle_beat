require 'rspec'
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do

  it 'exists' do 
    jb = JungleBeat.new

    expect(jb).to be_instance_of(JungleBeat)
  end

  it 'JungleBeat starts as an empty LinkedList' do
    jb = JungleBeat.new

    expect(jb.list).to be_instance_of(LinkedList)
  end

  it 'head of LinkedList instance of JungleBeat starts as nil' do
    jb = JungleBeat.new
    
    expect(jb.list.head).to eq(nil)
  end

  it 'JungleBeat instance splits the string into different nodes' do
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
    expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
    expect(jb.count).to eq(6)
  end

  it 'count method for JungleBeat properly counts all appended nodes' do
    jb = JungleBeat.new
    jb.append("deep doo ditt") 
    jb.append("deep doo ditt") 
    jb.append("deep doo ditt")

    expect(jb.count).to eq(9)
  end
end