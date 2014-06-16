class RPNCalculator

	attr_accessor :value

	def plus(calculator=[])
		calculator.reduce(:+)
	end


end
