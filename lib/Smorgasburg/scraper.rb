require "open-uri"
require "nokogiri"
require "pry"

class Smorgasburg::Scraper

attr_accessor :name, :time , :address

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
  html = open("https://www.smorgasburg.com/saturday-williamsburg/")
  doc = Nokogiri::HTML(html)

   location = self.new
#
   location.name = doc.css("div .project-slide-description-text p").first.text
#   location.time = doc.css("div .project-slide-description-text p p").text
#   location.address = doc.css("div .project-slide-description-text p p p").text
  location
  end
#
 def self.scrape_prospect_park
   doc = Nokogiri::HTML(open("https://www.smorgasburg.com/sunday-smorgasburg/"))
   location = self.new
#
   location.name = doc.css("div .project-slide-description-text p").first.text
#   location.day = doc.css("").text
#   location.time = doc.css("").text
#   location.address = doc.css("")
  location
 end
#
 def self.scrape_square
   doc = Nokogiri::HTML(open("https://www.smorgasburg.com/smorgasburg-varick/"))
   location = self.new
#
    location.name = doc.css("div .project-slide-description-text p").first.text
#   location.day = doc.css("").text
#   location.time = doc.css("").text
#   location.address = doc.css("")
   location
 end
#
# end
end
