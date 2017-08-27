class Smorgasburg::Scraper

attr_accessor :name, :day , :time , :address

def self.details
  self.scrape_info
end

def self.scrape_info
  locations = []
  locations << self.scrape_williamsburg
  locations << self.scrape_prospect_park
  locations << self.scrape_square
  locations
end

def self.scrape_williamsburg
  location_1 = self.new
  location_1.name = "Smorgasburg Williamsburg"
  location_1.day = "Saturday"
  location_1.time = "11am -6pm"
  location_1.address = "Williamsburg N7th Street"
  location_1
end

def self.scrape_prospect_park
  location_2 = self.new
  location_2.name = "Smorgasburg Prospect Park"
  location_2.day = "Sunday"
  location_2.time = "11am -6pm"
  location_2.address = "Prospect Park-Well House"
  location_2
end

def self.scrape_square
  location_3 = self.new
  location_3.name = "Smorgasburg Square"
  location_3.day = "Saturday and Sunday"
  location_3.time = "11am -6pm"
  location_3.address = "IDK"
  location_3
end

end
