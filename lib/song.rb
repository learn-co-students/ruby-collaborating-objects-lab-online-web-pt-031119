require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist_name)
    if artist_name.class == Artist
       @artist = artist_name
    elsif artist_name.class == String
      @artist = Artist.find_or_create_by_name(artist_name)
    end
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name)
    song.artist = file_name.split(" - ")[0]
    song.artist.add_song(self)
    song.name = file_name.split(" - ")[1].sub('.mp3', '')
    song
  end

end
