require './lib/node'

class LinkedList

  attr_accessor :head 

  def initialize(head = nil)
    @head = head
  end

  def append(beat)
    if self.empty?
      @head = Node.new(beat)
    else
      active_node = @head
      new_node = Node.new(beat)
      while active_node.next_node != nil  
        active_node = active_node.next_node
      end
      active_node.next_node = new_node
    end
  end
  
  def empty?
    if @head == nil
      return true
    else
      false
    end
  end

  def count
    if self.empty? 
      return count = 0
    else
      count = 1
      active_node = @head
      while active_node.next_node != nil
        active_node = active_node.next_node
        count += 1
      end
    end
    count
  end

  def to_string
    full_list = []
    if self.empty?
      return "I'm empty"
    else
      active_node = @head
      full_list << active_node.data
      while active_node.next_node != nil
        active_node = active_node.next_node
          full_list << active_node.data
        end
      end
      full_list.each do |data|
        active_node.data
      end
      full_list.join(', ')
    end

end