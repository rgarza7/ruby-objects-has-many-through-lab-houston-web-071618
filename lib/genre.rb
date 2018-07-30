class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Artist.all.select do |artist|
      artist.genres.include?(self)
    end
  end

end
