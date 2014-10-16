# We're going to make a shopping list by storing a few items in an array.
grocery_list=["carrots", "toilet paper", "apples", "salmon"]
def show_list (to_buy)
	puts "Here is what you need to buy:"
	to_buy.sort!
	to_buy.each {|items|puts "* #{items}"}
	total=to_buy.length
	puts "There are #{total} items on the list"
end


puts "Welcome to my grocery list, what would you like to do?"
puts "Enter \"1\" to view current list"
puts "Enter \"2\" to add an item"
puts "Enter \"3\" to remove an item"
puts "Enter \"4\" to search an item"


option=gets.chomp
until option.to_i>=1 && option.to_i<=4 do 
	puts "Please enter valid option 1, 2 or 3"
	puts "Enter \"1\" to view current list"
	puts "Enter \"2\" to add an item"
	puts "Enter \"3\" to remove an item"
	puts "Enter \"4\" to search an item"
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
	show_list(grocery_list)
	removal=gets.chomp
	until grocery_list.include?removal
		puts "No, #{removal} is not on the list, try again"
		show_list(grocery_list)
		removal=gets.chomp
	end
	grocery_list.delete(removal)
	puts "#{removal.upcase} is now removed from the list"
	show_list(grocery_list)
when "4"
	puts "What would you like to search?"
	puts "Enter item name or item number from 1 to #{grocery_list.length}"
	search=gets.chomp
	if grocery_list.include?search 
		puts "#{search.upcase} is already on the list"
	elsif grocery_list[search.to_i-1] != "nil" && search.to_i>=1 && search.to_i<=grocery_list.length
		grocery_list=grocery_list.sort
		puts grocery_list[search.to_i-1]
	else
		puts "#{search.upcase} is NOT on the list, please add!"
	end

end
