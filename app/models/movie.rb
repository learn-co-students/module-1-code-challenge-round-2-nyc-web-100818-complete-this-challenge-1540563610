require 'pry'
class Movie
  #is it ruby convention to have your macros directly under the model with no newline?
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_movie(movie_title)
    @@all.find {|movie| movie.title == movie_title}
  end

  def queue_items
    QueueItem.all.select {|item| item.movie == self}
  end

  def viewers
    self.queue_items.map {|item| item.viewer}
  end

  def movie_ratings
    ratings = self.queue_items.map {|item| item.rating}
    ratings.compact
  end

  def highest_rating
    asc = self.movie_ratings.sort
    desc = asc.reverse
    desc[0]
  end

  def average_rating
    sum = self.movie_ratings.reduce(:+)
    divisor = self.movie_ratings.size
    avg = sum.to_f/divisor.to_f
    if divisor == 0
      "no ratings yet"
    else
      avg.round(2)
    end
  end

  def self.highest_rated
    movies_ratings = {}
    @@all.each do |movie|
      movies_ratings[movie.title] = movie.average_rating
    end
      movies_ratings.delete_if {|movie, rating| rating == nil}
    if movies_ratings == {}
      "no ratings yet"
    else
      movies_ratings.sort_by {|movie, rating| rating}
      movie_title = movies_ratings.keys.last
      Movie.find_movie(movie_title)
    end
  end

  # returns the movie with the most ratings
  def self.most_rated
    movies_hash = {}
    count = 1
    QueueItem.all.each do |item|
      if item.rating != nil
        movies_hash[item.movie.title] = count
        count +=1
      end
    end
    movies_hash.sort_by {|movie_title, ratings_count| ratings_count}
    movie_title = movies_hash.keys.last
    self.find_movie(movie_title)
  end

end
