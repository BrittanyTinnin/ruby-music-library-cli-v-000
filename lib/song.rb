#joining model
require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist=nil)
    @artist = artist
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
    # Artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
  end

  def self.destroy_all
    @@all.clear
  end
end
