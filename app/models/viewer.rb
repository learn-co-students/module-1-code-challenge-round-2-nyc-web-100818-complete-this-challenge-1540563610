class Viewer
  attr_accessor :username
 
  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select do |queue_item|
      queue_item.viewer == self
    end
  end

  # def queue_movies
  #   #return an array of `Movie` instances in the `Viewer`'s queue.
 
  # end

  #his method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue
  def add_movie_to_queue(movie)
    QueueItem.new(viewer, self, rating)
  end
  def self.queue
  queued = QueueItem.all.find {|movie| movie.rating == movie}
  binding.pr
  y
  end
  #given a movie and a rating (a number between 1 and 5), this method should assign the rating to 
  def rate_movie(movie, rating)
    
      
      #find if movie is already in queue?

  end


  def self.all
    @@all
  end
  
end
