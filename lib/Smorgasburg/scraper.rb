class Smorgasburg::Scraper

attr_accessor :name, :day , :time , :address

def self.details
  location_1 = self.new
  location_1.name = "Smorgasburg Prospect Park"
  location_1.day = "Sunday"
  location_1.time = "11am -6pm"
  location_1.address = "Prospect Park-Well House"

  location_2 = self.new
  location_2.name = "Smorgasburg Williamsburg"
  location_2.day = "Saturday"
  location_2.time = "11am -6pm"
  location_2.address = "Williamsburg N7th Street"

  location_3 = self.new
  location_3.name = "Smorgasburg Square"
  location_3.day = "Saturday and Sunday"
  location_3.time = "11am -6pm"
  location_3.address = "IDK"

  [location_1,location_2,location_3]



end
end
