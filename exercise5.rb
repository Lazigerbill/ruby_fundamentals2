# converts Fahrenheit temperatures to Celsius

puts "Please enter the temperature you wish to convert in Fahrenheit"
fahren=gets.chomp.to_i

def temp_conversion	(value)
	celsius=(value-32)*5/9
	p "#{value} Fahrenheit equals to #{celsius} Celsius"
end

temp_conversion(fahren)


