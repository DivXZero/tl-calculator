
# Prompt user with a message, and return input
def get_input(msg)
  puts '~> ' + msg + ':'
  return gets.chomp
end

# Display a menu with choices. Calls recursively until a valid selection is made [1-4]
def display_menu
  puts '1) Add    2) Subtract    3) Multiply    4) Divide'

  selection = get_input('Enter a Selection').to_i

  if selection > 0 && selection < 5
    return selection
  else
    puts 'Invalid choice. Please enter a valid number [1-4]'
    return display_menu
  end
end

# Prompt for 2 numbers
num1 = get_input('Enter Number 1')
num2 = get_input('Enter Number 2')

# Display the menu, perform the selected operation, and return the results
results = case(display_menu)
  when 1  # Add
    num1.to_i + num2.to_i
  when 2  # Subtract
    num1.to_i - num2.to_i
  when 3  # Multiply
    num1.to_i * num2.to_i
  when 4  # Divide
    num1.to_f / num2.to_f
end

# Finally, output the results of the calculation
puts "Answer: #{results}"
