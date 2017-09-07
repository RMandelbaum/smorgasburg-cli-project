class Smorgasburg::Location

 attr_accessor :name, :time , :address

@@all = []

def initialize
  @@all << self
end

def self.all
  @@all
end

end