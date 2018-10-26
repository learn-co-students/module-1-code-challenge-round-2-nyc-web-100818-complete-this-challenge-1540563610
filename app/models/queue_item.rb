class QueueItem
  attr_accessor :rating
  attr_reader :viewer, :movie

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

  def self.find_item(viewer, movie)
    @@all.find {|item| item.viewer == viewer && item.movie == movie}
  end

end
