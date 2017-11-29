class Bears

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_count
    return @stomach.length
  end

  def eat_fish(river)
    @river.remove_fish(fish)
    @stomach.push(fish)
  end

end
