class Movie
  attr_accessor :title, :rating

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    # returns an array of all the `QueueItem` instances that
    # contain this movie
    QueueItem.all.select do |q|
      q.movie == self
    end
  end

  def viewers
    # returns an array of all of the `Viewer`s with this
    #`Movie` instance in their queue
    queue_items.map do |q|
      q.viewer
    end
  end

  def average_rating
    # returns the average of all ratings for this instance
    # of `Movie`

    #get num of ratings that exist for a particular movie
    num_ratings = 0
    queue_items.each do |q|
      if q.rating != nil
        num_ratings += 1
      end
    end

    total_rating = 0

    queue_items.each do |item|
      if item.rating != nil
        total_rating += item.rating
      end
    end

    total_rating.to_f / num_ratings
    #
  end

  def self.highest_rated
    # returns the instance of `Movie` with the highest average
    # rating

    #set a variable highest_rated to the first movie in the
    #QueueItem @@all array

    #iterate through all the queue items

    #if the average_rating of the current movie is higher
    #than the movie set to highest_rated
    #set highest_rated to that current movie

    #return highest_rated
  end

end
