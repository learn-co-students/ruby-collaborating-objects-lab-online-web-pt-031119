require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def import
    files.each{ |filename| Song.new_by_filename(filename) }
  end

  def files
    @files ||= Dir.glob("#{@path}/*.mp3").map{|file| file.gsub("#{@path}/", "") }
  end

end
