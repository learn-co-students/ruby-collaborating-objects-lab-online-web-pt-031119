class MP3Importer

    attr_accessor :songs, :path  

    def initialize(path)
        @path = path 

    end 

    def files
        Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
        #binding.pry 
    end 

    def import 
        files.each do |mp3| 
            Song.new_by_filename("#{mp3}")
        end  
    end 


end 
