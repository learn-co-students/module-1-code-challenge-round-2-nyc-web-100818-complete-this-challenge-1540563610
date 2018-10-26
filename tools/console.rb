require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("transformers")
m2 = Movie.new("matrix")
m3 = Movie.new("this christmas")

v1 = Viewer.new("elaitman1")
v2 = Viewer.new("buckets42")
v3 = Viewer.new("strongman1")

q1 = QueueItem.new(m1, v1, 5)
q1 = QueueItem.new(m2, v2, nil)
q1 = QueueItem.new(m3, v1, nil)
q1 = QueueItem.new(m1, v2, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
