class Bears

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_count
    return @stomach.length
  end

  def eat_fish(fish)
    fish = @river.remove_fish()
    @stomach.push(fish)
  end

end
