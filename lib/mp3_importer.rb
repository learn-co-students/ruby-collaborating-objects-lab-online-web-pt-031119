require "pry"

class MP3Importer
  
  attr_accessor :path
  
  def initialize (path)
    @path = path
  end 
  
  def files
    Dir.entries('./spec/fixtures/mp3s').slice!(0...4)
  end
  
  def import 
  filenames = Dir.entries('./spec/fixtures/mp3s').slice!(0...4)
  filenames.each do |names|
    Song.new_by_filename(names)
  end
  end
 
end