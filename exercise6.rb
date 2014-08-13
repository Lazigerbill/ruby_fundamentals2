# We're going to make a shopping list by storing a few items in an array.
grocery_list=["carrots", "toilet paper", "apples", "salmon"]
def show_list (to_buy)
	puts "Here is what you need to buy:"
	to_buy.each {|items|puts "* #{items}"}
	total=to_buy.length
	puts "There are #{total} items on the list"
end


puts "Welcome to my grocery list, what would you like to do?"
puts "Enter \"1\" to view current list"
puts "Enter \"2\" to add an item"
puts "Enter \"3\" to remove an item"


option=gets.chomp
until option.to_i>=1 && option.to_i<=3 do 
	puts "Please enter valid option 1, 2 or 3"
	puts "Enter \"1\" to view current list"
	puts "Enter \"2\" to add an item"
	puts "Enter \"3\" to remove an item"
	puts "what would you like to do?"
	option=gets.chomp
end

case option
when "1"
	if grocery_list.length == 0 
		puts "There is nothing on your list my dear"
	else
	show_list(grocery_list)
	end
when "2"
	puts "What would you like to add the list?"
	addition=gets.chomp
	grocery_list<<addition
	show_list(grocery_list)

when "3"
	puts "What would you like to remove from the list?"

end
