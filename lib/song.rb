require "pry"
class Song

attr_accessor :name, :genre
attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist_name)
    #binding.pry
    if artist_name.class == Artist
      @artist = artist_name
    else
      @artist = Artist.find_or_create_by_name(artist_name)
    end
    @artist.songs << self
  end
#Michael Jackson - Black or White - pop.mp3
  def self.new_by_filename(file)
    nomp3 = file.gsub(".mp3","")
    artist_info = nomp3.split(" - ")
    song_name = artist_info[1]
    song_artist = artist_info[0]
    song_genre = artist_info[2]
    song = self.new(song_name)
    song.artist = song_artist
    song
  end

end
