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
  #+ returns all of the viewers

  def queue_items
    QueueItem.all.select do |qi|
      qi.viewer == self
    end
  end
  # this method should return an array of `QueueItem` instances associated with this instance of `Viewer`.

  def queue_movies # instance meth
    queue_items.all.select do |qi|
      qi.movie == self
    end
  end
  # this method should return an array of `Movie` instances in the `Viewer`'s queue.

  def add_movie_to_queue(movie) # instance
  end
  # this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue

  def add_movie_to_queue(movie) # instance
  end
  # this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue

  def rate_movie(movie, rating) # instance
  # given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.
end
end

=begin
#+ `Viewer.all`
#  + returns all of the viewers
+ `Viewer#queue_items`
  + this method should return an array of `QueueItem` instances associated with this instance of `Viewer`.

+ `Viewer#queue_movies`
  + this method should return an array of `Movie` instances in the `Viewer`'s queue.
+ `Viewer#add_movie_to_queue(movie)`
  + this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue

+ `Viewer#rate_movie(movie, rating)`
  + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.
=end
