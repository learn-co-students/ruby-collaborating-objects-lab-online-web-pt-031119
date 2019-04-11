

class MP3Importer
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath
  end
 
 
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    #binding.pry
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
  
  
end