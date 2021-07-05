class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    songs << song
  end
   
   def self.all
     @@all
   end
   
   def save
     @@all << self
     self
   end
   
   def self.create(name)
     self.new(name).save
   end
   
   def self.find_or_create_by_name(name)
    if @@all.find {|artist| artist.name == name}
       @@all.find {|artist| artist.name == name}
    else
       self.create(name)
    end
  end
  
  def print_songs
    songs.each {|songs| puts songs.name}
  end
end