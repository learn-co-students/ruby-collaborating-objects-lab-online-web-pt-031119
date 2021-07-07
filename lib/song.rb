require 'pry'

class Song

  attr_accessor :name, :artist, :file_name

  @@all = []

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file_name)
    file_name_split = file_name.split(/\s\W\s\w+(.mp3)\z/) #removes the genre and .mp3 from the string
    file_name_array = file_name_split[0].split("-") #separates the artist name & song name as two separate strings
    artist_name = file_name_array[0].strip  #removes leading & trailing white spaces from artist name
    song_name = file_name_array[1].strip  #removes leading & trailing white spaces from song name
    new_song = self.new(song_name)
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song.artist.add_song(new_song)
    new_song
  end

  def save
    @@all << self
    self
  end

end
