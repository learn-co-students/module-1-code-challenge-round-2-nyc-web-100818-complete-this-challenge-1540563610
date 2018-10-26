require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new('ana')
v2 = Viewer.new('joe')


m1 = Movie.new('title1')
m2 = Movie.new('title2')


q1 = QueueItem.new(v1, m1, 3)
q2 = QueueItem.new(v2, m2, 1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
