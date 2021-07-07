require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  #  song.artist = self
  #  song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist)
    artist_check = self.all.find {|x| x.name == artist}
    artist_check ? artist_check : Artist.new(artist).save.last
  end

  def print_songs
    self.songs.collect do |x|
      puts x.name
    end
  end

end
