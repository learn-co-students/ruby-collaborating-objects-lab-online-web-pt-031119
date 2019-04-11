require 'pry'

class Artist

    attr_accessor :name, :songs 

    @@all = []

    def initialize(name)
        @name = name
        #binding.pry 
        # @@all << self 
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
    
    def self.find_or_create_by_name(name)
        if artist = self.all.detect {|artist| artist.name == name}
            artist 
        # if self.all.detect {|artist| artist.name == name}
        #   self.all.detect {|artist| artist.name == name}   
        #binding.pry
        else
            new_artist = Artist.new(name)
            new_artist.save 
            new_artist 

        end
    end
    
    def print_songs
        @songs.each {|song| puts "#{song.name}"}
    end 
 
end 