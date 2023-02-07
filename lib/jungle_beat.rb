
class JungleBeat

  attr_accessor :list

  def initialize(list = nil)
    @list = LinkedList.new
  end

  def append(sounds)
    sounds_array = sounds.split(' ')
    active_node = @head
    sounds_array.each do |sound|
      require 'pry'; binding.pry
      sound = Node.new(sound)
      while list.head != nil
        list = active_node.next_node
      end
      list = sound
  end


    # active_node = @head
    # new_node = Node.new(beat)
    # while active_node.next_node != nil  
    #   active_node = active_node.next_node
    # end
    # active_node.next_node = new_node
  end
end