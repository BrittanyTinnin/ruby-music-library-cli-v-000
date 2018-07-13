class Genre
  attr_accessor :name

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

  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end

  def songs
    @songs
  end


  def self.destroy_all
    @@all.clear
  end

end
