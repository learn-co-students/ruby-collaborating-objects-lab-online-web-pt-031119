require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select {|e| e.end_with?('.mp3')}
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end
