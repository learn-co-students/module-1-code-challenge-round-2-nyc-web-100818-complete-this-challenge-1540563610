require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("A")
v2 = Viewer.new("B")

m1 = Movie.new("Hp")
m2 = Movie.new("BBB")
m3 = Movie.new("blahhh")

q1 = QueueItem.new(v1, m1, 2)
q2 = QueueItem.new(v1, m1, 4)
q3 = QueueItem.new(v2, m2, 5)
q4 = QueueItem.new(v1, m2, 4)
q5 = QueueItem.new(v1, m3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
