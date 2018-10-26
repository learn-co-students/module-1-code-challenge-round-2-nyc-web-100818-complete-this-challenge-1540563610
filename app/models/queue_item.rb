class QueueItem # an instance of a queue
  attr_accessor :viewer, :movie

  @@all = []

  def initialize(viewer, movie)
    @movie = movie
    @viewer = viewer

    self.class.all << self
  end

  def self.all
    @@all
  end

  def rating
  end
end 

  # returns the rating for this `QueueItem`. If the viewer has not yet rated the movie, `QueueItem#rating` should be `nil`

#
# #_A `QueueItem` object represents that an individual user has added a particular movie to their queue,
# #and possibly rated it. **It is not the full queue, but a single item in the queue.**_
# #
#
#
# ___??
#
=begin
+ `QueueItem.all`
  + returns an array of all `QueueItem`s
+ `QueueItem#viewer`
  + returns the viewer associated with this `QueueItem`
+ `QueueItem#movie`
  + returns the movie associated with this `QueueItem`
+ `QueueItem#rating`
  + returns the rating for this `QueueItem`. If the viewer has not yet rated the movie, `QueueItem#rating` should be `nil`
=end
