class Genre 
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :songs, :artist

@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def save
  @@all << self
end

def self.all 
  @@all 
end

def self.destroy_all
  @@all = []
end 

def self.create(name)
  genre = self.new(name)
  genre.save
  genre
end

def songs 
  @songs
end

def artists
  artists = []
  @songs.map do |song|
  artists << song.artist
  end
  artists.uniq
  end
end


