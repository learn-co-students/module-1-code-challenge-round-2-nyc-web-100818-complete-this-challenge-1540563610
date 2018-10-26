require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


 alex = Viewer.new("alex")
 jimmy = Viewer.new("jimmy")
 ronny = Viewer.new("ronny")
 cheesy = Viewer.new("cheesy")

 death = Movie.new("death")
 spooky = Movie.new("spooky")
 wasted = Movie.new("wasted")
 rime = Movie.new("rime")
 crust = Movie.new("crust")
 lament = Movie.new("lament")
 fkn_metal = Movie.new("fkn metal")

 qi1 = QueueItem.new(jimmy, lament)
 qi2 = QueueItem.new(cheesy, crust)
 qi3 = QueueItem.new(ronny, fkn_metal)
 qi4 = QueueItem.new(jimmy, wasted)


















# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
