require "./Superhero"

#List all superhero instances in the database
def list
    superheroes = SuperheroDatabase.list_all
    if superheroes.empty? 
        puts ""
        puts ("No active superheroes").blue
    else
        puts ""
        puts ("----- All Superheroes -------").blue 
        print_table(superheroes)
        puts ""
        puts ("Total number of superheroes: #{superheroes.length}").blue

    end
    continue
end

# Creates a new superhero instance
def create
    has_more_superpowers = "yes"
    superpowers = []

    print "What would you like to name your superhero: "
    begin
        name = gets.chomp.strip.downcase
        raise if name == ""
            rescue
            print "Superhero name cannot be empty: "
            retry           
    end 
    puts ""
    puts "Whats the secret identity of your superhero?"
    print "(if the superhero has no secret identity press enter): "
    
    identity = gets.chomp.strip.downcase
    puts ""

    while has_more_superpowers == "yes"
        puts "What superpowers do they have?"
        print "(enter one superpower at a time, minimum of 1): "
        begin    
            superpower = gets.chomp.strip.downcase
            raise if superpower == ""
            rescue
            print "Superpower cannot be blank. Enter superpower: "
            retry
        end          
        
        superpowers << superpower
        puts ""
        puts "Current superpowers: #{(superpowers.join(', ')).green}"
        prompt = TTY::Prompt.new
        has_more_superpowers = prompt.select("Does #{name} have more superpowers?", %w(yes no))
        puts ""
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
    puts "Please enter the superhero name you would like to search? "
    print "(press enter to display all) : "
    
    results = find_superheroes
    puts ""
    if results.nil? || results.empty?
        puts ""
        puts ("No superhero found with that keyword").blue
    else
        puts ("Search results: ").blue
        print_table(results)
    end
    
    continue
end

# Edit a superhero instance (pick using superhero search)
def edit
    puts "Please enter the name of the superhero you would like to edit?"
    print "(press enter to display all options): "
    puts ""
    results = find_superheroes

    if results.nil? || results.empty?
        puts ""
        puts "No superhero found with that keyword"
    else
        prompt = TTY::Prompt.new
        selected_superhero = prompt.select("Please select a superhero to edit: ", results)
        
        puts "Current name: #{selected_superhero.name}"
        print "New name: "
        begin
            name = gets.chomp.strip.downcase
            raise if name == ""
                rescue
                print "Superhero name cannot be empty: "
                retry           
        end 
        puts "Current identity: #{selected_superhero.identity}"
        print "New identity: "
        identity = gets.chomp.strip.downcase
        puts "Current superpowers: #{(selected_superhero.superpowers.join(", ")).green}"
        print "New superpowers (separate superpowers with a ','): "
        superpowers = gets.chomp.strip.downcase.split(/,/)
        selected_superhero.edit name, identity, superpowers

        puts ("Superhero edited!").blue
    end
    continue
end

# Delete a superhero instance (pick using superhero search)
def destroy
    puts "Please enter the superhero name you would like to delete?"
    print "(press enter to display all options): "
    puts ""
    results = find_superheroes

    if results.nil? || results.empty?
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

# Superhero database banner
def banner
    puts "\e[H\e[2J"
    puts ""
    a = Artii::Base.new
    puts a.asciify("Superhero  Database").blue 
    puts ""
end

# To keep information on screen until user is ready to return to the main menu
def continue
    puts ""
    puts ("Press enter to return to main menu").red
    gets
end

# Methods to display the superhero content neatly 
def print_table(items)
    rows = rows_for items 
    table = TTY::Table.new(["Id","Name", "Identity","Superpowers"], rows)
    puts table.render(:ascii)
end

def rows_for(superheroes)
    superheroes.map do |superhero|
        [superhero.id, superhero.name, superhero.identity, superhero.superpowers.join(", ")]
    end
end

# Method to search for and display superheroes
def find_superheroes
    input = gets.chomp.strip

    superheroes = SuperheroDatabase.list_all
    results = superheroes.select {|superhero| superhero.name.include? input}
    results
end