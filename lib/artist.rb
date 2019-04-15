class Artist 
  attr_accessor :name, :songs 
  @@all= []

  def initialize(name )
    @name = name 
    @songs = []
  end #def 

  def  add_song(song)
    @songs << song
    
  end     #def

  def  self.all  
    @@all 
  end     #def 

  def save 
    @@all << self
    #self  
  end     #def 
     
     
  def  self.find_or_create_by_name(name)
    if @@all.find { |artist| artist.name == name} 
       @@all.find { |artist| artist.name == name}
    else 
      #self.new(name)
      new_artist = self.new(name)
      new_artist.save 
      new_artist
    end 
  end     #def 
  
  def  print_songs 
     @songs.each {|song|puts song.name}
  end     #def 
  
end