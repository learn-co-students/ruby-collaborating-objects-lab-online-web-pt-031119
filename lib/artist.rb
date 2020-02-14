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

def self.find_or_create_by_name(artistname)
  # @@all.each do |artist|
  #   if artist.name == artistname

if @@all.detect {|i| i.name == artistname}
  @@all.detect {|i| i.name == artistname}
  # i was returninga string before saying this artist exists, can't manipulte string
else
  artis = Artist.new(artistname)
  artis.save
  artis
end

end

def print_songs
list = []
  @songs.each do |item|
    list << item.name
  end


  list = list.join("\n")
  puts "#{list}"
end



end
