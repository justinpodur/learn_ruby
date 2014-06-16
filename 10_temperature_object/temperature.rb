class Temperature
attr_accessor :f, :c
#attrs means attributes
def initialize(attrs = Hash.new(0))
	if attrs[:f]
		@f = attrs[:f]
		@c = Temperature.ftoc(attrs[:f])
	elsif attrs[:c]
		@c = attrs[:c]
		@f = Temperature.ctof(attrs[:c])
	end
end

def self.in_celsius(c)
	self.new(:c => c)
#basically calling your initializer again
end

def self.in_fahrenheit(f)
	self.new(:f => f)
end

def to_celsius
	@c.to_i
end

def to_fahrenheit
	@f.to_i
end

def self.ftoc(f)
	(f-32)*(5.0/9)
end

def self.ctof(c)
	c*(9.0/5)+32
end

end

class Celsius < Temperature
	def initialize(c)
		@c = c
	end

	def to_fahrenheit
		@c*(9.0/5)+32
	end
end

class Fahrenheit < Temperature
	def initialize(f)
		@f = f
	end

	def to_celsius
		(@f-32)*(5.0/9)
	end
end