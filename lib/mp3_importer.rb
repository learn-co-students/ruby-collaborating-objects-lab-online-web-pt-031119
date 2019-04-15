
class MP3Importer
  attr_accessor :path
  
  def initialize(path)     
    @path = path
  end     #def 
  
  def files      
    Dir.entries(path).find_all {|file| file.include?("mp3")}
  end     #def 
  
  def import 
    files.each do |song|
    Song.new_by_filename(song)
    end
  end     #def 
  
end