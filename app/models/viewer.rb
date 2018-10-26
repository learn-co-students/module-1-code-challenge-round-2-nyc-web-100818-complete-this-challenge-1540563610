class Viewer
  attr_accessor :username

  @@all = []

  # instance methods
  def initialize(username)
    @username = username
    self.class.all << self
  end

  def queue_items # helper
    QueueItem.all.select do |qitem|
      qitem.viewer == self
    end
  end

  def queue_movies # movie instances in the viewer's queue
    viewers_q = self.queue_items # used helper
    viewers_q.map do |vq|
      vq.movie
    end
  end

  def add_movie_to_queue(movie)
    new_movie_to_q = QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    # if my queue does not have this movie, then create a new q item instance w this movie and rating
    if !self.queue_items.include?(movie)
      new_q = QueueItem.new(self, movie, rating)
    else
      self.queue_items.map do |qi|
        if qi.movie.title == movie.title
          qi.rating = rating # when i check the queue, rating not changed...
        end
      end
    end
  end

  def self.all
    @@all
  end

end # end of Viewer class

# trying to get Viewer#rate_movie(movie, rating)
# self.queue_movies.map do |qm|
#   if qm.movie.title == movie.title
#     qm.rating = rating
#   else
#     new_q = QueueItem.new(self, movie, rating)
#   end
# end

# if !self.queue_movies.include?(movie)
#   new_q = QueueItem.new(self, movie, rating)
# end

#
# if !self.queue_movies.include?(movie)
#   new_q = QueueItem.new(self, movie, rating)
# end # assign the rating to the q item for this movie
#
# self.queue_movies.map do |qm| # otherwise find this movie and assign it's rating
#   if qm.movie.title == movie.title
#     qm.rating = rating
#   end
# end
# class methods
