require 'pry'
class Song

   attr_accessor :name, :artist

   def initialize(name)
     @name = name
   end

   def self.new_by_filename(file)
     song_name = file.split(' - ')[1]
     artist_name = file.split(' - ')[0]
     song = self.new(song_name)
     artist = Artist.creat(artist_name)
     song.artist = artist
     artist.add_song(song)
     song
   end

end
