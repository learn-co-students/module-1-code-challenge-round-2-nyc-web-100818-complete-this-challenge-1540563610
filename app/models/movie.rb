class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title

    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |q|
      q.movie == self
    end
  end

  def queue_viewers
    self.queue_items.map do |q|
      q.viewer
    end
  end

  def all_rating
    self.queue_items.map do |q|
      q.rating
    end
  end

  def sum_all_rating
    self.all_rating.inject(0) {|sum, i| sum + i}
  end

  def average_rating
    self.sum_all_rating / self.all_rating.length
  end

  def self.highest_rated
    rated = QueueItem.all.sort_by do |q|
      q.rating
    end
    rated.last
  end

end
