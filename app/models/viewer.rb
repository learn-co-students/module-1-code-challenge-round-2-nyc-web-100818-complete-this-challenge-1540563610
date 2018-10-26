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
    QueueItem.all.select do |q|
      q.viewer == self
    end
  end

  def queue_movies
    self.queue_items.map do |q|
      q.movie
    end
  end

# his method should receive a Movie instance as its only argument
# and add it to the Viewer's queue
  def add_movie_to_queue(movie)
   add_movie = Movie.new(movie)
   self.queue_movies << add_movie
 end

# given a movie and a rating (a number between 1 and 5),
# this method should assign the rating to the viewer's QueueItem for that movie.
# If the movie is not already in the viewer's queue,
# this method should add a new QueueItem with the viewer, movie, and rating.
# If the movie is already in the queue, this method should not create a new QueueItem.
  def rate_movie(movie, rating)
    self.queue_items.find do |q|
      if q.movie = movie
        q.rating = rating
      else self.add_movie_to_queue(movie)
      end
    end
end

end
