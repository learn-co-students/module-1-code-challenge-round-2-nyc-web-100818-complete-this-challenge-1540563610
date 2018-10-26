require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("v1")
v2 = Viewer.new("v2")
v3 = Viewer.new("v3")

m1 = Movie.new("Legally Blonde")
m2 = Movie.new("Parent Trap")
m3 = Movie.new("Gone Girl")

q1 = QueueItem.new(v1, m1, 5)
q2 = QueueItem.new(v1, m2, 5)
q3 = QueueItem.new(v1, m1, 1)
q4 = QueueItem.new(v2, m1)

#TESTING

#v1.queue_items WORKS
#v1.queue_movies WORKS
#v1.add_movie_to_queue("Bring It On") and then see if added with v1.queue_items WORKS
#v1.rate_movie("Bring It On", 1)

#Movie.all WORKS
#m1.queue_items WORKS
# m1.viewers WORKS
#m1.average_rating WORKS

# QueueItem.all WORKS
# q1.viewer and q4.viewer both WORK
#same for movie and rating on a QueueItem both WORK

#viewer#rate_movie(movie, rating)
# v2.queue_items
# => [#<QueueItem:0x007fdc4eb383f0
#   @movie=#<Movie:0x007fdc4eb38530 @title="Legally Blonde">,
#   @rating=nil,
#   @viewer=#<Viewer:0x007fdc4eb385d0 @username="v2">>]
# [2] pry(main)> v2.rate_movie("Legally Blonde", 1)
# => [#<Movie:0x007fdc4eb38530 @rating=1, @title="Legally Blonde">]
# [3] pry(main)> v2.queue_items
# => [#<QueueItem:0x007fdc4eb383f0
#   @movie=#<Movie:0x007fdc4eb38530 @rating=1, @title="Legally Blonde">,
#   @rating=nil,
#   @viewer=#<Viewer:0x007fdc4eb385d0 @username="v2">>]
#
#   ^^^ adds a rating of 1 but then shows both a rating of 1 and a rating of nil???


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
