class Parcel
  define_method(:initialize) do |width, height, length|
    @width = width
    @height = height
    @length = length
  end

  define_method(:volume) do
    return @width * @height * @length
  end

  define_method(:cost_to_ship) do |weight, speed, distance|
    return ((volume() * weight) + (speed * distance))/100.0
  end
end
