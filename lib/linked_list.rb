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
      # full_list.each do |data|
      #   active_node.data
      # end
      full_list.join(', ')
  end

  def prepend(beat)
    if self.empty?
      @head = Node.new(beat)
    else
      original_head = @head
      @head = Node.new(beat)
      new_head = @head
      new_head.next_node = original_head
    end
  end

  def insert(position, beat)
    if self.empty?
      return "I'm empty, use append or prepend instead"
    elsif
     position == 0
     self.prepend(beat)
    elsif
      position > self.count
      return "Error, given index position is > than nodes in list"
    else
      position_count = 1
      previous_node = @head
      next_node = previous_node.next_node
    until position_count == position
      previous_node = previous_node.next_node
      next_node = previous_node.next_node
      position_count += 1
    end
      inserted_node  = Node.new(beat)
      previous_node.next_node = inserted_node
      inserted_node.next_node = next_node
    end
  end

  def find(beat, amount)
    requested_list = []
    position_count = 1
    active_node = @head
    # if self.empty?
    #   return "List is empty"
    # # elsif 
    # #   item = beat
    # #   self.include?(item) == false
    # #   return "Element not found in list"
    # elsif
    #   amount == 0
    #   return "Requested no elements"
    # else
    # end
    # while position_count != amount 
    #   active_node = active_node.next_node
    #   if active_node.data != beat
    #     active_node.next_node
    #   else
    #     requested_list << active_node.data
    #     position_count += 1
    #     # if active_node.data == beat
    #     #   requested_list << active_node.data
    #     # end
    # end
  end
    requested_list.join(', ')
  end

  def include?(item)
    active_node = @head
    while active_node.next_node != nil
      active_node = active_node.next_node
      if active_node.data == item
    return true
      else 
    return false
      end
    end
  end
end