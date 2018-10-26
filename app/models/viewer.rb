class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    # + this method should return an array of `QueueItem` instances associated
    # with this instance of `Viewer`.
    QueueItem.all.select do |qi|
      qi.viewer == self
    end
  end

  def queue_movies
    # this method should return an array of `Movie` instances in the `Viewer`'s queue.
    queue_items.map do |qi|
      qi.movie
    end
  end

  def add_movie_to_queue(movie)
    # + this method should receive a `Movie` instance as its only argument and
    # add it to the `Viewer`'s queue
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    # + given a movie and a rating (a number between 1 and 5), this method
    # should assign the rating to the viewer's `QueueItem` for that movie.
    # If the movie is not already in the viewer's queue,
    # this method should add a new `QueueItem` with the viewer, movie, and rating.

    # if self.add_movie_to_queue(movie) == nil
    #   QueueItem.new(self, movie, rating)

    if queue_movies == nil
      QueueItem.new(self, movie, rating)
    # If the movie is already in the queue, this method should not create a new `QueueItem`.
    end
    queue_movies
  end
end #end of class
