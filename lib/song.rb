class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file)
    artist, song = file.split(" - ")
    new_song = self.new(song)
    new_artist = Artist.find_or_create_by_name(artist)
    new_artist.add_song(new_song)
    new_song.artist = new_artist
    new_song
  end
  
end