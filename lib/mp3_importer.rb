class MP3Importer

 def initialize
   Dir.entries("your/folder").select {|f| !File.directory? f}
 end

 def files(file)
 end

 def import
 end

end
