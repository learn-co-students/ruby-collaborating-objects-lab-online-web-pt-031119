require "pry"
class  Artist

attr_accessor :name, :songs
@@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|x| x.name == name} == nil
      self.new(name)
    else
      @@all.detect {|x| x.name == name}
    end
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |x|
       print ("#{x.name}\n")
    end
  end
end
