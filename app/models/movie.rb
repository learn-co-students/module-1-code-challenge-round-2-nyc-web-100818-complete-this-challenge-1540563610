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
    QueueItem.all.select do |queueitems|
      queueitems.movie == self
    end
  end

  def viewers
    queue_items.map do |queueitems|
      queueitems.viewer
    end
  end

  def all_ratings_movie_instance
    queue_items.map do |queueitems|
      queueitems.rating
    end
  end

  def average_rating
    all_ratings_movie_instance.reduce(:+)/all_ratings_movie_instance.length
  end

  def self.highest_rated
    make a sort method on the queue_items class from the self.all. then use that class and pick out the one at the end of the array. array.last
    end

  end



end
