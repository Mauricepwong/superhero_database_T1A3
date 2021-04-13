require "./Superhero"

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
    has_more_superpowers = "y"
    superpowers = []

    print "What would you like to name your superhero: "
    name = gets.chomp.strip.capitalize
    puts ""

    while name.empty? # use until
        puts "Sorry the superhero name cannot be empty"
        print "Superhero name: "
        name = gets.chomp.strip.capitalize            
    end
    
    puts "(if the superhero has no secret identity press enter)"
    print "Whats the secret identity of your superhero:  "
    identity = gets.chomp.strip.capitalize
    puts ""

    # look into other methods
    while has_more_superpowers == "y" || has_more_superpowers == "yes"
        puts "What superpowers do they have (enter one superpower at a time): "
        superpower = gets.chomp.strip.capitalize
        superpowers << superpower
        puts ""
        puts "Any more superpowers (Yes/No)?"
        has_more_superpowers = gets.chomp.strip.downcase
        # prompt = TTY::Prompt.new
        # input = prompt.select("Any more superpowers?", %w(Yes No))
    end

    puts ""
    puts "New superhero created!!!"

    superhero = Superhero.new name, identity, superpowers   # add other attributes
    superhero.save 

    continue
end

def search
    puts "Please enter the superhero name you would like to search?"
    input = gets.chomp.strip
    superheroes = Superhero.all
    puts superheroes.select {|superhero| superhero.name.include? input}
end

def edit

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
