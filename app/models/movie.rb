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

  def queue_items # helper, all the time it has been queued
    QueueItem.all.select do |qitem|
      qitem.movie == self
    end
  end

  def viewers # looking at where this movie is queued and returns those viewers
    self.queue_items.select do |qitem|
      qitem.viewer
    end
  end

  def average_rating # CHECK THAT THIS WORKS!
    total_rating = 0
    rating_count = self.queue_items.length

    self.queue_items.map do |q|
      total_rating += q.rating
    end
    total_rating.to_f/rating_count
  end

  def self.highest_rated # USE AVERAGE RATING METHOD
    # max by ?
    highest_rating = 0
    movie = ''
    QueueItem.all.map do |q|
      if q.rating > highest_rating
        highest_rating = q.rating
        movie = q.movie
      end
    end
    movie
  end

end # end of Movie class
