#joining model
require 'pry'

class Song
  attr_accessor :name, :genre
  attr_reader :artist

  @@all = []

  def initialize(name, artist=nil)
    @artist
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end

  def artist=(artist)
    @artist = artist
    # binding.pry
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
  end

  def self.destroy_all
    @@all.clear
  end
end
