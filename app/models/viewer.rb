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
    QueueItem.all.select {|item| item.viewer == self}
  end

  def queue_movies
    self.queue_items.map {|item| item.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  #had some trouble constraining rating value.
  def rate_movie(movie, rating)
    my_movie = QueueItem.find_item(self, movie)
    if my_movie != nil
      my_movie.rating = rating
    else
      new_queue_item = self.add_movie_to_queue(movie)
      new_queue_item.rating = rating
    end
  end

end
