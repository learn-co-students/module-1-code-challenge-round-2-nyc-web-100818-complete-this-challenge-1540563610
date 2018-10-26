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
    QueueItem.all.select do |qi|
      qi.movie == self
    end
  end
  #returns an array of all the `QueueItem` instances that contain this movie

  def viewers
    #queue_items.map do |qi|

    #want to iterate through queue_items method to pull out a movie array of all the viewers watching htis Movie
    #want an array of viewers
  end
  #returns an array of all of the `Viewer`s with this `Movie` instance in their queue


  def average_rating
  #number of times = get @@all.length to show the total "number of times"
  #sum = then iterate through all ratings with map
    #ratings.reduce(:+)

  #sum/number of times
  end
  #returns the average of all ratings for this instance of `Movie`


  def Movie.highest_rated
  end
    #returns the instance of `Movie` with the highest average rating

end


=begin
+ `Movie.all`
  + returns an array of all `Movie`
+ `Movie#queue_items`
  + returns an array of all the `QueueItem` instances that contain this movie
+ `Movie#viewers`
  + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
+ `Movie#average_rating`
  + returns the average of all ratings for this instance of `Movie`
+ `Movie.highest_rated`
  + returns the instance of `Movie` with the highest average rating
=end
