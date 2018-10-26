class QueueItem

  attr_accessor :movie, :viewer, :rating

  def initialize(movie, viewer, rating)
    @movie = movie
    @viewer = viewer
    @rating = rating
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end



end
