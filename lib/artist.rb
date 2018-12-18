class Artist
  attr_accessor :name, :songs, :genres

  @@all = []
  def initialize(name)
    @@all << self
    @songs = []
    @genres = []
    @name = name
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    artInstance = self
    songInstance =  Song.new(song, artInstance, genre)
    @genres << genre
    @songs << songInstance
    songInstance
  end

end
