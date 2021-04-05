require_relative "../model/Superhero"

class SuperheroesController
    def self.index
        superheroes = Superhero.all
        if superheroes.empty?
            puts "-- All Superheroes "
            puts Superhero.all
            puts "Total number of superheroes #{Superhero.number_of_instances}"
        else
            puts "No active superheroes"
        end
    end

    def self.create
        name = gets.chomp.strip
        Superhero.new name 
    end
end