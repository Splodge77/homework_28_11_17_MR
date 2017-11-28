class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish_pop = []
  end

  def fish_count
    return @fish_pop.length
  end

  def add_fish(fish)
    @fish_pop << fish
  end

  def remove_fish(fish)
    index = @fish_pop.index(fish)
    @fish_pop.slice!(index, 1)
  end


end
