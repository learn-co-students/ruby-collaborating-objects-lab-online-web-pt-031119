class Song

    attr_accessor :name, :artist 

    @@all =[]

    def initialize(name) 
        @name = name
        @library = []
    end
    
    def save 
        @@all << self 
    end
    
    def self.all
        @@all
    end
    
    # def artist_name=(name)
    #     self.artist = Artist.find_or_create_by_name(name)
    # end 

    def self.new_by_filename(file_name)
        new_song_file = file_name.split(" - ")
        new_song = Song.new(new_song_file[1])
        new_song.artist = Artist.find_or_create_by_name(new_song_file[0])
        new_song.artist.add_song(new_song)
        new_song.save 
        
        new_song 
    end

end



        
        #binding.pry 
        #@artist.name = file_name.split(" - ")[0]
        #binding.pry   
         
        
        #file_name.split(" - ") = Song.new([1]) 
        #binding.pry 
     

 

