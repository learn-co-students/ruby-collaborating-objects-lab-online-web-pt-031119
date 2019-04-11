require 'pry'

class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  @@all << self
  end
 
 def self.all
   @@all
 end
 
 
 def add_song(song_name)
  @songs << song_name
 end
 
 def save
  @@all << self
 end
 
 


def self.find_or_create_by_name(name)
  self.all.each do |data|
    if data.name == name
      return data.name
    else
      return self.new(name)
    end
   end
  end
 
 def print_songs
    #binding.pry
    songs.each {|song| puts song.song}
  end
end










