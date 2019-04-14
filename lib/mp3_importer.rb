class MP3Importer
  
  attr_accessor :files, :path 
  
  def initialize(path)
    @path = path
    @files = Dir.entries(./spec/fixtures/mp3s).grep(/.\.mp3/) 
  end 
  
  def parse
    files.split.collect do |address
  
  def import
    @files.each {|file| Song.new_by_filename(file)}
  end 
end 