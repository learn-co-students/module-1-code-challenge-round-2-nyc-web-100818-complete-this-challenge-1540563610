require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("Sdela")
v2 = Viewer.new("Gelaos")
v3 = Viewer.new("Koals")
v4 = Viewer.new("Nebaoo")
v5 = Viewer.new("Bebvaoi")

m1 = Movie.new("A hair")
m2 = Movie.new("The balo")
m3 = Movie.new("The malo")
m4 = Movie.new("I forua")
m5 = Movie.new("The mova")

qi1 = QueueItem.new(v1, m1, 5)
qi2 = QueueItem.new(v1, m2, 3)
qi3 = QueueItem.new(v2, m1, 1)
qi4 = QueueItem.new(v3, m1, 2)
qi5 = QueueItem.new(v4, m5, 5)
qi6 = QueueItem.new(v5, m4, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
