class Smorgasburg::Scraper

def self.scrape_info
  
 self.scrape_williamsburg
  self.scrape_prospect_park
  self.scrape_square
  
end

def self.scrape_williamsburg
  html = open("https://www.smorgasburg.com/saturday-williamsburg/")
  doc = Nokogiri::HTML(html)
   location = Smorgasburg::Location.new

  location.name = doc.css("div .project-slide-description-text p").first.text
   location.time = doc.css("div .project-slide-description-text p + p").first.text
   location.address = doc.css("div .project-slide-description-text p + p + p").first.text
  
  end
#
 def self.scrape_prospect_park
   html = open("https://www.smorgasburg.com/sunday-smorgasburg/")
   doc = Nokogiri::HTML(html)
   location = Smorgasburg::Location.new
#
   location.name = doc.css("div .project-slide-description-text p").first.text
   location.time = doc.css("div .project-slide-description-text p + p").first.text
   location.address = doc.css("div .project-slide-description-text p + p + p").first.text
 end

 def self.scrape_square
    html = open("https://www.smorgasburg.com/smorgasburg-varick/")
    doc = Nokogiri::HTML(html)
    location = Smorgasburg::Location.new

   location.name = doc.css("div .project-slide-description-text p").first.text
    location.time = doc.css("div .project-slide-description-text p + p").first.text
    location.address = doc.css("div .project-slide-description-text p + p + p").first.text
  end
end