require "./Superhero"

more_superpowers = true
superpowers = []

def list
    superheroes = Superhero.all
    if superheroes.empty? 
        puts ""
        puts "No active superheroes"
    else
        puts ""
        puts "----- All Superheroes -------"
        puts ""
        puts Superhero.all
        puts ""
        puts "Total number of superheroes: #{Superhero.number_of_instances}"
    end
    continue
end

def create
    begin
        print "What would you like to name your superhero: "
        name = gets.chomp.strip.capitalize
        puts ""
        

        # rescue ArgumentError,  if name.empty? 
        #     puts "Sorry the superhero name cannot be empty"
        #     retry
        # end
        while name.empty?
            puts "Sorry the superhero name cannot be empty"
            print "Superhero name: "
            name = gets.chomp.strip.capitalize
            
        end
    end

    puts "(if the superhero has no secret identity press enter)"
    print "Whats the secret identity of your superhero:  "
    identity = gets.chomp.strip.capitalize

    # while more_superpowers == true
    #     puts "What superpowers do they have (enter one superpower at a time): "
    #     superpower = gets.chomp.strip.capitalize
    #     superpowers << superpower
    #     puts "Any more superpowers?"
    #     prompt = TTY::Prompt.new
    #     input = prompt.select("Any more superpowers?", %w(Yes No))
    # end
    puts ""
    puts "New superhero created!!!"
    puts ""

    superhero = Superhero.new name, identity, superpowers   # add other attributes
    superhero.save 

    continue
end

def search

end

def destroy

    print "Which superhero would you like to delete: "
    id = gets.chomp.strip.to_i
    superhero = Superhero.find(id)
    superhero.delete

    continue
end

def banner
    puts "\e[H\e[2J"
    puts ""
    a = Artii::Base.new
    puts a.asciify("Superhero  Database").blue 
    puts ""
end

def continue
    puts ""
    puts "Press enter to continue..."
    gets
end
