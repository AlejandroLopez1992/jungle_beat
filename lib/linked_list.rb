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
      current_node = @head
      new_node = Node.new(beat)
      while current_node.next_node != nil  
        current_node = current_node.next
      end
      current_node.next_node = new_node
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
        active_node = current_node.next
        count += 1
      end
    end
    count
  end

end