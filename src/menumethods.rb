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
    has_more_superpowers = "yes"
    superpowers = []

    print "What would you like to name your superhero: "
    name = gets.chomp.strip.capitalize
    puts ""

    while name.empty? # use until
        puts "Sorry the superhero name cannot be empty"
        print "Superhero name: "
        name = gets.chomp.strip.capitalize            
    end
    
    puts "Whats the secret identity of your superhero?"
    print "(if the superhero has no secret identity press enter): "
    
    identity = gets.chomp.strip.capitalize
    puts ""

    # look into other methods
    while has_more_superpowers == "yes"
        puts "What superpowers do they have"
        print "(enter one superpower at a time): "
        superpower = gets.chomp.strip.capitalize
        while superpower.empty?
            puts "Superpower cannot be blank: " 
            superpower = gets.chomp.strip.capitalize
        end
        superpowers << superpower
        puts ""
        puts "Current superpowers: #{superpowers.join(', ')}"
        prompt = TTY::Prompt.new
        has_more_superpowers = prompt.select("Does #{name} have more superpowers?", %w(yes no))
end

    puts ""
    puts "New superhero created!!!"

    superhero = Superhero.new name, identity, superpowers   # add other attributes
    superhero.save 

    continue
end

def search
    print "Please enter the superhero name you would like to search? "
    input = gets.chomp.strip
    superheroes = Superhero.all
    puts ""
    
    results = superheroes.select {|superhero| superhero.name.include? input}
    if input == ""
        puts ""
        puts "keyword needed"
    elsif results.empty?
        puts ""
        puts "No superhero found with that keyword"
    else
        puts "Search results: "
        puts ""
        puts results
    end
    
    continue
end

def edit

end

def destroy
    puts "Please enter the superhero name you would like to delete?"
    input = gets.chomp.strip
    superheroes = Superhero.all
    puts ""

    prompt = TTY::Prompt.new
    choices = superheroes.select {|superhero| superhero.name.include? input}
    id = prompt.select("Which superhero would you like to delete: ", choices, per_page: 10)
    
    p id
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
