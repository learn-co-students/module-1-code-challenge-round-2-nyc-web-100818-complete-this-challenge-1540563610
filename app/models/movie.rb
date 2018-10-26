### `Movie`

# + `Movie.all`
#   + returns an array of all `Movie`
# + `Movie#queue_items`
#   + returns an array of all the `QueueItem` instances that contain this movie
# + `Movie#viewers`
#   + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
# + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating

class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    # returns an array of all the `QueueItem` instances that contain this movie
    QueueItem.all.select do |queueItem|
      queueItem.movie == self
    end
  end

  def viewers
    #returns an array of all of the `Viewer`s with this `Movie` instance in their queue
    self.queue_items.map do |queueItem|
      queueItem.viewer
    end
  end

  def average_rating
    #returns the average of all ratings for this instance of `Movie`
    r = self.queue_items.map do |queueItem|
      queueItem.rating
    end
    r.reduce(:+)/r.count
  end

  def self.highest_rated
    #returns the instance of `Movie` with the highest average rating
    Movie.all.max_by do |element|
      element.title
    end
  end


end
