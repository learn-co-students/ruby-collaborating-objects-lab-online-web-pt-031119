class Artist
  attr_accessor :name, :song, :artist  
  
  @@all = []
  
  def initialize(name, song)
  @name = name
  @songs = song 
  end
  
  def self.all
    @@all 
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self
    song
  end
  
  def songs
  @songs 
  end 
  
  
  def save 
    @@all << self
    self 
  end 
  
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name).save
  end 
end 