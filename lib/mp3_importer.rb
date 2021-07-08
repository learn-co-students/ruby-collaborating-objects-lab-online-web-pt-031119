require "pry"
class MP3Importer 
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end
  
  #Dir.glob("#{path}/*.mp3")

  def files
  
   Dir.entries(path).find_all do |file| 
    # binding.pry
     file.include?(".mp3")
    end
  end
  
  def import 
    files.each do |song|
      Song.new_by_filename(song)
    end
  end
  
end