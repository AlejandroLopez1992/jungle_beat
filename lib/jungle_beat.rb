
class JungleBeat

  attr_accessor :list

  def initialize(list = nil)
    @list = LinkedList.new
  end

  def append(sounds)
    sounds_array = sounds.split(' ')
    sounds_array.each do |sound|
      list.append(sound)
    end
    sounds_array.join(' ')
  end

  def count
    list.count
  end

  def play
    beats_to_play = list.head.data
    active_node = list.head
    while list.head.data != nil
      active_node = active_node.next_node
      `say -r 500 -v Good news #{beats_to_play}`
    end
  end
end