class Viewer
  attr_accessor :username, :title

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end


  def queue_items
    # this method should return an array of `QueueItem` instances
    # associated with this instance of `Viewer`.
    QueueItem.all.select do |q|
      q.viewer == self
    end
  end

  def queue_movies
    # this method should return an array of `Movie` instances
    # in the `Viewer`'s queue.
    queue_items.map do |q|
      q.movie
    end
  end

  def add_movie_to_queue(movie)
    # this method should receive a `Movie` instance as its
    # only argument and add it to the `Viewer`'s queue
    new_queue_item = QueueItem.new(self, movie)

  end

  def rate_movie(movie, rating)
    # given a movie and a rating (a number between 1 and 5),
    # this method should assign the rating to the viewer's
    # `QueueItem` for
    # # that movie. If the movie is not already in the viewer's
    # queue, this
    # # method should add a new `QueueItem` with the viewer, movie,
    # and rating.
    # # If the movie is already in the queue, this method should
    # not create a new `QueueItem`.



    #iterate through this viewers queue movies

    #if the movie passed in is included in the queue,
    #assign the rating to that movie

    #if it isn't create a new QueueItem with this movie
    #and rating
    queue_movies.each do |q|
      if q.title == movie
        q.rating = rating
      else
        new_queue_item = QueueItem.new(self, movie, rating)
        #add_movie_to_queue(movie)
      end
    end
    #new_queue_item
  end




end


#
#   the_movie = queue_movies.find do |m|
#     m.title == movie
#   end
#   the_movie.rating = rating
# end
