class MP3Importer
  
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    Dir.chdir(@path) do
      Dir.glob("*.mp3")
    end  
  end
  
  def import
    files.each{ |filename| Song.new_by_filename(filename) }
  end
  
end  