class  Artist

attr_accessor :name
@@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(name)
    if self.detect {|x| x == name} == nil
      self.new(name)
    else
      self.detect {|x| x== name}
    end
  end

  def add_song(song)
    @songs << song
    self.song.name
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |x|
      print x
    end
  end
end
