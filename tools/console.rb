require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


v1 = Viewer.new ("noelle")
v2 = Viewer.new ("molly")
v3 = Viewer.new ("sarah")
v4 = Viewer.new ("dave")
v5 = Viewer.new ("faith")


m1 = Movie.new("mov1")
m2 = Movie.new("mov2")
m3 = Movie.new("mov3")
m4 = Movie.new("mov4")

qi1 = QueueItem.new(v1, m4)
qi2 = QueueItem.new(v2, m2)
qi3 = QueueItem.new(v4, m1)
qi4 = QueueItem.new(v5, m3)
qi5 = QueueItem.new(v2, m4)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
