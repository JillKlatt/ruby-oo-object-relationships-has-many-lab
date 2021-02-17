require_relative 'song'


require 'pry'

class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

#   def self.song_count
#     # self.songs.length
#     # @@song_count.length
# #   end

def self.song_count
    Song.all.count
end

#   def self.song_count
#     @songs.each {|song| song.count}
#     # @songs.each {|song| puts song.name}
#     end

  def songs
    Song.all.select {|song| song.artist == self}
  end

end

# binding.pry
# class Artist
#     attr_accessor :name, :songs

#     # @@all = []
#     @@song_count = 0
    
#     def initialize(name)
#         @name = name
#         @songs = []
#     end

#     def add_song(song)
#         @songs << song
#         song.artist = self
#         @song_count += 1
#     end

#     def add_song_by_name(song)
#         song = Song.new(song)
#         @songs << song
#         song.artist = self
#         @@song_count += 1
#     end

#     def self.song_count
#         @@song_count
#     end

#     # def self.all
#     #     @@all
#     # end
# end


# _________
# end

    # def self.songs(name)
    # song = Song.new(name)
    # song.artist = self
    # end

    # def add_song(song)
    #     @songs << song
    # end

    # def self.songs
    #     Song.all.select {|song| song.artist == self}
    # end