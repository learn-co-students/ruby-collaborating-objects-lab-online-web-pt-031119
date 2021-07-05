require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name=name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_by_name(artist_name)
    artist = self.new(artist_name)
    artist.name = artist_name
    artist.save
    artist
  end

  def self.find_by_name(artist_name)
    self.all.find do |artist|
      artist.name == artist_name
    end
  end

  def self.find_or_create_by_name(artist_name)
    if song = self.find_by_name(artist_name)
      song
    else
      song = self.create_by_name(artist_name)
    end
  end

  def print_songs
    self.songs.collect do |song|
       puts song.name
    end
  end
end
