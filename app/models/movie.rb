class Movie 
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    queue_items.map do |item|
      item.viewer == viewer
    end
  end


  t

#all movie ratings
  def total_all_ratings
    queue_items.map do |item|
      item.rating
    end
  end



  #specific movie
  def my_ratings
    all_my_ratings.select do |rating|
      rating.movie == self.rating
    end
  end




  def average_rating
    #my_ratings / total_all_ratings
  end

  def self.all
    @@all
  end

  def self.highest_rated
    highest_rating = 0



  end

end
