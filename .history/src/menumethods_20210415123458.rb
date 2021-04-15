require "./Superhero"

def list
    superheroes = SuperheroDatabase.list_all
    if superheroes.empty? 
        puts ""
        puts ("No active superheroes").blue
    else
        puts ""
        puts ("----- All Superheroes -------").blue 
        puts ""
        print_table(superheroes)
        puts ""
        puts ("Total number of superheroes: #{Superhero.number_of_instances}").blue

    end
    continue
end

def rows_for(superheroes)
    superheroes.map do |superhero|
        [superhero.id, superhero.name, superhero.identity, superhero.superpowers.join(", ")]
    end
end

def create
    has_more_superpowers = "yes"
    superpowers = []

    print "What would you like to name your superhero: "
    name = gets.chomp.strip.downcase
    puts ""

    while name.empty? # use until
        puts "Sorry the superhero name cannot be empty"
        print "Superhero name: "
        name = gets.chomp.strip.downcase            
    end
    
    puts "Whats the secret identity of your superhero?"
    print "(if the superhero has no secret identity press enter): "
    
    identity = gets.chomp.strip.downcase
    puts ""

    # look into other methods
    while has_more_superpowers == "yes"
        puts "What superpowers do they have"
        print "(enter one superpower at a time): "
        superpower = gets.chomp.strip.downcase
        while superpower.empty?
            print "Superpower cannot be blank. Enter superpower " 
            superpower = gets.chomp.strip.downcase
        end
        superpowers << superpower
        puts ""
        puts "Current superpowers: #{superpowers.join(', ')}"
        prompt = TTY::Prompt.new
        has_more_superpowers = prompt.select("Does #{name} have more superpowers?", %w(yes no))
    end

    puts ""
    puts ("New superhero created!!!").blue

    superhero = Superhero.new name, identity, superpowers   # add other attributes
    Superheroes << superhero

    continue
end

# Search all existing superheroes based on user
# search terms (matching on superhero name).
# 
# Prints table of all superheroes with name containing
# user search term (case sensitive)
def search
    print "Please enter the superhero name you would like to search? "
    results = find_superheroes
    if results.empty?
        puts "No superhero found with that keyword"
    else
        puts ("Search results: ").blue
        puts ""
        print_table(results)
    end
    
    continue
end

# Edit a superhero instance (pick using superhero search)
def edit
    puts "Please enter the name of the superhero you would like to edit?"
    results = find_superheroes
    if results.empty?
        puts ""
        puts "No superhero found with that keyword"
    else
        prompt = TTY::Prompt.new
        selected_superhero = prompt.select("Please select a superhero to edit: ", results)
        
        puts "Current name: #{selected_superhero.name}"
        print "New name: "
        name = gets.chomp.strip.downcase
        puts "Current identity: #{selected_superhero.identity}"
        print "New identity: "
        identity = gets.chomp.strip.downcase
        puts "Current superpowers: #{selected_superhero.superpowers.join(", ")}"
        print "New superpowers (separate superpowers with a ','): "
        superpowers = gets.chomp.strip.downcase.split(/,/)
        selected_superhero.edit name, identity, superpowers

        puts ("Superhero edited!").blue
    end
    continue
end

def destroy
    puts "Please enter the superhero name you would like to delete?"
    results = find_superheroes

    if results.empty?
        puts ""
        puts "No superhero found with that keyword"
    else
        prompt = TTY::Prompt.new
        selected_superhero = prompt.select("Please select a superhero to delete: ", results)
        SuperheroDatabase.delete_superhero_by_id(selected_superhero.id)    

        puts ""
        puts ("Superhero deleted!").blue
    end
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

def print_table(items)
    rows = rows_for items 
    table = TTY::Table.new(["Id","Name", "Identity","Superpowers"], rows)
    puts table.render(:ascii)
end

def find_superheroes
    input = gets.chomp.strip
    if input == ""
        puts "keyword needed"
        return
    end
    superheroes = SuperheroDatabase.list_all
    results = superheroes.select {|superhero| superhero.name.include? input}
    results
end