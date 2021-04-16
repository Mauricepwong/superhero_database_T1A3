def help
    puts "   To navigate the site:"
    puts "   Use the up and down arrows to navigate the menu and press enter to select an option"
    puts ""
    puts ("  List all the superheroes").green
    puts "    - This will list all the current superheroes in the database."
    puts "      It will list their name, identity and superpowers."
    puts ("  Create a new superhero").green
    puts "    - Create a new hero here with different skills and abilities."
    puts "      You will need to enter the following:"
    puts "      Name (required)"
    puts "      Identity"
    puts "      Superpower (requires at least 1 superpower)"
    puts ("  Search the superhero database").green
    puts "    - Search for your favourite superhero." 
    puts "      Enter in the superhero name (or partial name) into the input field."
    puts "      It will then return all results with that keyword."
    puts ("  Edit a superhero").green
    puts "    - Edit superhero information with this option. First search and then select a particular superhero."
    puts "      It will then give you the option to override the information already stored for the superhero."   
    puts ("  Delete a superhero").green
    puts "    - Will delete a superhero record. First search for the superhero and then select which hero you want deleted"
    puts "      Be careful! deleting a superhero cannot be undone."
    puts ("  Help with this database").green
    puts "    - This will open the extisitng screen."
    puts ("  Exit the database").green
    puts "    - This will quit the application and return you back to the command line."

    continue    
end