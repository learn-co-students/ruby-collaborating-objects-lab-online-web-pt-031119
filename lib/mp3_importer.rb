class MP3Importer
attr_accessor :path
def initialize(filepath)
  @path = filepath
end

def files()
  fileslist = @path + "/*.mp3"
  newlist = []
files = Dir.glob(fileslist)
files.each do |item|
  stripped = item.gsub(@path + "/","")
  newlist << stripped
end
newlist
end

def import
  self.files.each do |item|
    girl = Song.new_by_filename(item)
    # songarray = item.split(" - ")
    # songtitle = songarray[1]
    # songartist = songarray[0]
    # song = Song.new_by_filename(songtitle)
    # @artist = Artist.find_or_create_by_name(songartist)
    # binding.pry
  end
end

end
