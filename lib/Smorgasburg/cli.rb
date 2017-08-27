class Smorgasburg::CLI

  def run
    puts "Welcome to your resource for Smorgasburg locations!"
    list_locations
    more_options
  end

def list_locations
  #first hard code to make sure it works, then use scrape to create objects
  puts "1. Smorgasburg Prospect Park"
  puts "2. Smorgasburg Williamsburg"
  puts "3. Smorgasburg Square"
end

def more_options
end



end
