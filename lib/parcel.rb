class Parcel

  define_method(:initialize) do |height, length, width, weight|
    @height = height
    @length = length
    @width = width
    @weight = weight
  end

  define_method(:volume) do
    @height * @length * @width
  end

  define_method(:cost_to_ship) do
    cost = @weight * volume() / 100
    if cost < 5
      cost = 5
    end
    return cost
  end

end
