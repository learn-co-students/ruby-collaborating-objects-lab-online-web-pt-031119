require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song (song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name (name)
      singer = self.all.find {|artist| artist.name == name}
    if singer
      singer
    else
      singer = Artist.new(name)
      singer.save
      singer
    end
  end

  def print_songs
    self.songs.each {|s| puts s.name}
  end
end
