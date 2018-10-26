class QueueItem

  attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    # returns an array of all `QueueItem`s
    @@all
  end

  # def viewer
  #   # returns the viewer associated with this `QueueItem`
  # created attr_accessor for this
  # end

#   def movie
#     # returns the movie associated with this `QueueItem`
# # created attr_accessor for this
#   end

  # def rating
  #   # returns the rating for this `QueueItem`. If the viewer
  #   # has not yet rated the movie, `QueueItem#rating` should be
  #   #`nil`
  #   # # created attr_accessor for this
  # end


end
