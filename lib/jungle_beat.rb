
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
end