require "artii"
require "colorize"

puts "\e[H\e[2J"
puts ""
puts "welcome to the ".center(100)
a = Artii::Base.new
puts a.asciify("Superhero  Database").blue 