class QueueItem

  attr_accessor :rating
  attr_reader :movie, :viewer

  @@all = []

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
