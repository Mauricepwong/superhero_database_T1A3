require 'tty-prompt'

puts "Welcome to the superhero database"


prompt = TTY.Prompt.new
    choices = [ 
        { name: "Create a new superhero" value: 1 }
        { name: "List all the superheroes" value: 2 }
        { name: "Search the superhero database" value: 3 }
        { name: "Edit/delete a superhero" value: 4 }
        { name: "Help with the database" value: 5 }
        { name: "Exit the database" value: 6 }
]

request = prompt.select("Main menu", choices)

request = choice.split.first


