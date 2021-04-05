


puts "Welcome to the superhero database"

  prompt.select("Main Menu" cycle: true) do |menu|
menu.choice "Create a new superhero"
menu.choice "List all the superheroes"
menu.choice "Search the superhero database"
menu.choice "Edit/delete a superhero"
menu.choice "Help with database"
menu.choice "Exit the database"




