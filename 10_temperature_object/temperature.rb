class Temperature
  attr_reader :f, :c
  alias_method :in_fahrenheit, :f
  alias_method :in_celsius, :c

  def initialize(attrs = Hash.new(0))
    if attrs[:f]
      @f = attrs[:f]
      @c = Temperature.ftoc(attrs[:f])
    elsif attrs[:c]
      @c = attrs[:c]
      @f = Temperature.ctof(attrs[:c])
    end
  end

  def f=(temperature)
    @f = temperature
    @c = Temperature.ftoc(@f)
  end

  def c=(temperature)
    @c = temperature
    @f = Temperature.ctof(@c)
  end

  def self.ftoc(f)
    (f - 32) * (5.0 / 9.0)
  end

  def self.ctof(c)
    c * (9.0 / 5.0) + 32
  end

  def self.to_fahrenheit(temperature)
    Temperature.new(:c => temperature)
  end

  def self.to_celsius(temperature)
    Temperature.new(:f => temperature)
  end

end

class Celsius < Temperature
  def initialize(degrees)
    @c = degrees
    @f = Celsius.ctof(degrees)
  end
end

class Fahrenheit < Temperature
  def initialize(degrees)
    @f = degrees
    @c = Fahrenheit.ftoc(degrees)
  end
end