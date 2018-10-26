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
    # + returns an array of all the `QueueItem` instances that contain this movie
    QueueItem.all.select do |qi|
      qi.movie == self
    end
  end

  def viewers
    # + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
    queue_items.map do |qi|
      qi.viewer
    end
  end

  def ratings #helper method, gets rating into array
    arr = queue_items.map do |qi|
      qi.rating
    end
  end

  def average_rating
    # + returns the average of all ratings for this instance of Movie
    # get the movies of self
    # get the rating in array
    # then average w reduce(:+) / total array
    ratings.reduce(:+) / ratings.length.to_f
  end

  def self.highest_rated
    # + returns the instance of `Movie` with the highest average rating
    # get all the movie Instances
    # get the ratings from them
    # mi = QueueItem.all.select do |movie|
    #   movie.average_rating
    Movie.all.max_by do |qi|
      qi.average_rating
    end
  end

end #end of class
