require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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

  def add_song(song)
    # song = Song.new(name, self, genre)
    @songs << song unless self.songs.include?(song)
    song.artist = self unless song.artist == self
  end

  def songs
    @songs
  end

  def self.destroy_all
    @@all.clear
  end


end
