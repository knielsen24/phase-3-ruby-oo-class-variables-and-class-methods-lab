require 'pry'

class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []
	@@artist_count = {}
	@@genre_count = {}

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@artists << self.artist
		@@genres << self.genre
	end

	def self.count
		@@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		@@genres.tally
	end

	def self.artist_count
		@@artists.tally
	end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
bonnie_and_clyde = Song.new("Bonnie and Clyde", "Jay-Z", "rap")
hit_me_baby_one_more_time = Song.new("hit me baby one more time", "Brittany Spears", "pop")
gimmee_more = Song.new("gimme more", "Brittany Spears", "pop")
with_or_without_you = Song.new("With or without you", "U2", "alternative")

def reload
	load "lib/song.rb"
end

binding.pry
0
