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

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find(name)
    @@all.find do |artist|
      artist.name = name
    end
  end

  def self.creat(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.creat(name)
    end
  end

  def print_songs
    puts @songs.collect {|song|
      song.name}
  end

end
