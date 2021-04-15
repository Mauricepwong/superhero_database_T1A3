class InvalidNameError < StandardError
end


    print "What would you like to name your superhero: "
    begin    
    name = gets.chomp.strip.downcase

    raise if name == ""
    rescue 
        p "name must not be empty"
        retry
    end