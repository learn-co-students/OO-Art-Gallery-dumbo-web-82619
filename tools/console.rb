require_relative '../config/environment.rb'

a1 = Artist.new("AB", 6)
a2 = Artist.new("CD", 15)

g1 = Gallery.new("Cohan", "NYC")
g2 = Gallery.new("Zwirner", "NYC")
g3 = Gallery.new("VA", "London")

p1 = Painting.new("1", 1000, a1, g1)
p2 = Painting.new("2", 2000, a1, g2)
p3 = Painting.new("3", 3000, a1, g3)
p3 = Painting.new("4", 4000, a1, g1)
p4 = Painting.new("5", 31000, a2, g2)
p5 = Painting.new("6", 5000, a2, g3)
p6 = Painting.new("7", 6000, a2, g1)
p7 = Painting.new("8", 7000, a2, g2)
p8 = Painting.new("9", 8000, a2, g3)
p9 = Painting.new("10", 9000, a2, g1)


binding.pry

puts "Bob Ross rules."
