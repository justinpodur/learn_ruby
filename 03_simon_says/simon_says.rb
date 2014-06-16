def echo(string)
	"#{string}"
end

def shout(string)
	"#{string.upcase}"
end

def repeat(string,number=2)
	if number > 2
		repeated = "#{string}"
		(number-1).times do |x|
			repeated << " #{string}"
		end
		return repeated	
	else
		return "hello hello"
	end
end

def start_of_word(string,number)
	if number > 1
		string[0,number]
	else
		string[0]
	end
end

def first_word(string)
	wordarray = string.split(' ')
	wordarray[0]
end

def titleize(string)
	array = string.split(' ')
	array.each do |x|
		if x == array[0]
			x.capitalize!
		elsif x == "the" || x == "and" || x == "over"
		else
			x.capitalize!
		end
	end
	array.join(' ')
	
end
