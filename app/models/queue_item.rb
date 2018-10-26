# THE JOIN TABLE
# SHOULD HAVE INSTANCES OF VIEWER AND MOVIE

class QueueItem
  attr_accessor :viewer, :movie
  attr_reader :rating

  @@all = []

  def initialize(viewer, movie, rating = nil)
    @viewer = viewer
    @movie = movie
    @rating = rating # will need customer setter

    @@all << self
  end

  def rating=(rating)
    if rating >= 1 && rating <= 5
      @rating = rating
    end
  end


  def self.all
    @@all
  end
  
end # end of QueueItem
