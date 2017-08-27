class Smorgasburg::CLI

  def run
    puts "Welcome to your resource for Smorgasburg locations!"
    list_locations
    more_options
  end

def list_locations
  #first hard code to make sure it works, then use scrape to create objects
  puts "Please enter the number to see more info of the location."
  puts "1. Smorgasburg Prospect Park"
  puts "2. Smorgasburg Williamsburg"
  puts "3. Smorgasburg Square"

  input = gets.strip
  index = input.to_i - 1

  if !index.between?(0,2)
    puts "Invalid input"
    list_locations

  else
    puts "#{smorg.name} - #{smorg.day} - #{smorg.time} - #{smorg.address}"

  end

def more_options
  puts "To see more info of another location enter 'see more'. Otherwise enter 'exit.'"
  input = gets.strip

  if input != "exit"
    list_locations
  else
    "Goodbye!"
  end

end



end

def more_options
end



end
