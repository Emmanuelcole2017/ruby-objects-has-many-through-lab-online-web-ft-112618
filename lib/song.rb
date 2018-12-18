class Song
  attr_accessor :name, :artist, :genre

  @@all = []
  def initialize(name, artist, genre)
    @@all << self
    @name = name
    @artist = artist
    @genre = genre
    songInstance = self
    @genre.songs << songInstance
    @genre.artists << artist

  end

  def self.all
    @@all
  end

end
