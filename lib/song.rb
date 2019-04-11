require "pry"
class Song

attr_accessor :artist, :name, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    nomp3 = file.gsub(".mp3","")
    artist_info = nomp3.split(" - ")
    song_name = artist_info[1]
    song_artist = artist_info[0]
    song_genre = artist_info[2]
    song = self.new(song_name)
    #binding.pry
    song.artist = artist_info[0]
    song.artist.name = song.artist
  end

end
