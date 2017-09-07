class Smorgasburg::CLI

  def run
    puts "Welcome to your resource for Smorgasburg locations!"
    list_locations
  end

def list_locations
  #first hard code to make sure it works, then use scrape to create objects
  Smorgasburg::Scraper.scrape_info
  Smorgasburg::Location.all.each.with_index(1) do |local, i|
    puts " #{i}. #{local.name}"
  end

  puts "Please enter the number to see more info of the location."
  input = gets.strip
  index = input.to_i - 1

  if !index.between?(0,2)
    puts "Invalid input"
    list_locations

  else
    smorg = Smorgasburg::Location.all[index]
    puts "#{smorg.name} - #{smorg.time} - #{smorg.address}"
   end
   more_options
  end

def more_options
  puts "To see more info of another location enter 'see more'. Otherwise enter 'exit.'"
  input = gets.strip.downcase

  if input == "exit"
    puts "Goodbye!"
  elsif input == "see more"
    list_locations
  else
    puts "Invalid input."
    more_options
  end

end



end
