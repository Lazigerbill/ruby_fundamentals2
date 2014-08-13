# start out with a hash representing the number of students in cohorts.
students ={
	:cohort1 => 34,
	:cohort2 => 42,
	:cohort3 => 22
}

def display (hash)
	hash.each do |key, value|
		puts key.to_s + ": " + value.to_s + " students"
	end
end

def class_expand (hash, percent)
	hash.each do|key, value|
		hash[key] = (value.to_i*(100+percent))/100
	end
		display (hash)
end

puts "Welcome to Bitmaker Labs, what would you like to do?"
puts "Enter \"1\" to view list"
puts "Enter \"2\" to add a cohort"
puts "Enter \"3\" to remove a cohort"
puts "Enter \"4\" to expand the cohorts"
puts students.keys

option=gets.chomp
until option.to_i>=1 && option.to_i<=4 do 
	puts "Please enter valid option 1, 2 or 4"
	puts "Enter \"1\" to view list"
	puts "Enter \"2\" to add a cohort"
	puts "Enter \"3\" to remove a cohort"
	puts "Enter \"4\" to expand the cohorts"
	puts "what would you like to do?"
	option=gets.chomp
end

case option
	when "1"
		display(students)

	when "2"
		puts "Please enter the number of students in the next cohort:"
		number=gets.chomp
		students[:cohort4]=number.to_i
		display(students)

	when "3"
		puts "Please choose which cohort to be removed:"
		display(students)
		removal="cohort"+gets.chomp
		key=removal.to_sym
		students.delete(key)
		puts"#{key.to_s} is removed!"
		display(students)
	when"4"
		puts "Please enter the percentage of expansion:"
		percent=gets.chomp.to_i
		class_expand(students, percent)

		

		
end

		