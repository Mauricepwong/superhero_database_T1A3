require_relative "../model/Superhero"

more_superpowers = true
superpowers = []


class SuperheroesController
    def self.index
        superheroes = Superhero.all
        if superheroes.empty?
            puts ""
            puts ""
            puts "No active superheroes"
            puts ""
            puts ""
        else
            puts ""
            puts "-- All Superheroes "
            puts ""
            puts Superhero.all
            puts "Total number of superheroes: #{Superhero.number_of_instances}"
            puts ""
            puts ""
        end
    end

    def self.create
        puts "What would you like to name your superhero: "
        name = gets.chomp.strip.capitalize
        
        puts "Whats the secret identity of your superhero: "
        identity = gets.chomp.strip.capitalize


        # while more_superpowers == true
        #     puts "What superpowers do they have (enter one at a time): "
        #     superpower = gets.chomp.strip.capitalize
        #     superpowers << superpower
        #     puts "Any more superpowers?"

        puts ""
        puts ""
        puts "New superhero created!"
        puts ""
        puts "" 

        superhero = Superhero.new name, identity
        superhero.save 
        # add other attributes
    end

    def self.destroy
        print "Which superhero would you like to delete: "
        id = gets.chomp.strip.to_i
        superhero = Superhero.find(id)
        superhero.delete
    end
end