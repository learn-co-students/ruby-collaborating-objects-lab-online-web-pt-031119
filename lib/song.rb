require "pry"

class Song
  
  attr_accessor :name, :artist
  
  def initialize (name)
    @name = name
  end
  
  def artist_name= (name)
    Artist.all.each do |singer|
    if singer.name == name
      self.artist.name = singer.name
    binding.pry
    else
      artist = Artist.new(name)
      self.artist.name = artist
    end
  end
end
      
  
  def self.new_by_filename (list)
    song = self.new (name)
    song.name = list.split(" - ")[1]
    song.artist = Artist.new(list.split(" - ")[0])
    song.artist.add_song(song)
    song.artist.save
    song
  end
  
end