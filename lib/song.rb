require 'pry'

class Song
	attr_accessor :name
	attr_reader :artist

	def initialize(name)
		@name = name
	end

	def artist=(artist)
		@artist = artist
	end

	def artist_name=(name)
		self.artist = Artist.find_or_create_by_name(name)
		artist.add_song(self)
	end

	def self.new_by_filename(file)
		artist, song = file.split(' - ')
		new_song = self.new(song)
		new_song.artist_name = artist
		new_song
		#binding.pry
	end

end