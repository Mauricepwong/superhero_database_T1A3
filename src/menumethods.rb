require "./Superhero"


def list
    superheroes = Superhero.all
    rows = rows_for superheroes
    if superheroes.empty? 
        puts ""
        puts "No active superheroes"
    else
        puts ""
        puts ("----- All Superheroes -------").blue 
        puts ""
        table = TTY::Table.new(["Id","Name", "Identity","Superpowers"], rows)
        puts table.render(:ascii)
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
        puts "keyword needed"
    elsif results.empty?
        puts "No superhero found with that keyword"
    else
        puts "Search results: "
        puts ""
        puts results
    end
    
    continue
end

def edit
    puts "Please enter the superhero name you would like to edit?"
    input = gets.chomp.strip
    superheroes = Superhero.all
    
    results = superheroes.select {|superhero| superhero.name.include? input}
    if input == ""
        puts "keyword needed"
    elsif results.empty?
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

        puts "Superhero edited!"
    end
    continue
end

def destroy
    puts "Please enter the superhero name you would like to delete?"
    input = gets.chomp.strip
    superheroes = Superhero.all
            
    results = superheroes.select {|superhero| superhero.name.include? input}
    if input == ""
        puts "keyword needed"
    elsif results.empty?
        puts ""
        puts "No superhero found with that keyword"
    else
        prompt = TTY::Prompt.new
        selected_superhero = prompt.select("Please select a superhero to delete: ", results)
        selected_superhero.delete

        puts "Superhero deleted!"
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
