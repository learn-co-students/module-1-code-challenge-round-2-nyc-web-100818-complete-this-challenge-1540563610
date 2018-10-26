require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("Saajid")
v2 = Viewer.new("Mike")
v3 = Viewer.new("Jeff")

m1 = Movie.new("The Dark Knight")
m2 = Movie.new("Harry Potter")
m3 = Movie.new("Avengers")
m4 = Movie.new("Shrek")

# (viewer, movie, rating)
q1 = QueueItem.new(v1, m2, 4)
q2 = QueueItem.new(v2, m1, 5)
q3 = QueueItem.new(v3, m3, 3)
q4 = QueueItem.new(v2, m2, 1)
q5 = QueueItem.new(v1, m2, 2)
q6 = QueueItem.new(v3, m2, 3)


test1 = v1.add_movie_to_queue("Shrek")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
