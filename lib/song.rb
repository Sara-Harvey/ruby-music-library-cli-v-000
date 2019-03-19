class Song 
extend Concerns::Findable
attr_accessor :name 
attr_reader :artist, :genre

@@all = []

def initialize(name, artist=nil, genre=nil)
  @name = name
  self.artist= artist if artist!=nil
  self.genre= genre if genre!=nil
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

def artist=(artist)
  @artist = artist
  @artist.add_song(self)
end

def genre= (genre)
  @genre = genre
  genre.songs << self unless 
  genre.songs.include?(self)
end

def self.create(name)
  song = self.new(name)
  song.save
  song
end

def self.find_by_name(name)
  @@all.find{|song| song.name == name}
end

def self.find_or_create_by_name(name)
  search = self.find_by_name(name)
  if search == nil
    song = self.create(name)
    song
  else search
end
end
end
