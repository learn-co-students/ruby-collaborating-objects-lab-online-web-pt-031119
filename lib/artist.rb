require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song

  end

  def save
    @@all << self

  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    #binding.pry
    #new_artist = self.new(name) if @@all.include?(self.name) == false
    #new_artist.save
    #return new_artist
    @@all.include?(name) ? @@all.find(name) : self.new(name).tap {|artist| artist.save}
    #binding.pry
  end

  
end