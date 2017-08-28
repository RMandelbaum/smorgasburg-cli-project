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

   location.name = doc.css("div .project-slide-description-text p").first.text
   location.time = doc.css("div .project-slide-description-text p + p").first.text
   location.address = doc.css("div .project-slide-description-text p + p + p").first.text
   location
  end
#
 def self.scrape_prospect_park
   html = open("https://www.smorgasburg.com/sunday-smorgasburg/")
   doc = Nokogiri::HTML(html)
   location = self.new
#
   location.name = doc.css("div .project-slide-description-text p").first.text
   location.time = doc.css("div .project-slide-description-text p + p").first.text
   location.address = doc.css("div .project-slide-description-text p + p + p").first.text
   location
 end

  def self.scrape_square
    html = open("https://www.smorgasburg.com/smorgasburg-varick/")
    doc = Nokogiri::HTML(html)
    location = self.new

    location.name = doc.css("div .project-slide-description-text p").first.text
    location.time = doc.css("div .project-slide-description-text p + p").first.text
    location.address = doc.css("div .project-slide-description-text p + p + p").first.text
    location
  end

end
