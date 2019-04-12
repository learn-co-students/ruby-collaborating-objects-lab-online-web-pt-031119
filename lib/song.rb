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
    elsif Artist.all.find {|artist| artist.name == artist_name}
      @artist = Artist.all.find {|artist| artist.name == artist_name}
    else
      artist = Artist.new(artist_name)
      @artist = artist
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
