class Superhero
    attr_reader :id
    attr_accessor :name, :identity, :superpowers, :height
    
    # @param String name
    # @param String identity
    # @param Array[String] superpowers
    def initialize(name, identity, superpowers) 
        @id = SecureRandom.hex(5)
        @name = name
        @identity = identity
        @superpowers = superpowers
    end

    def to_s
        [
            "Id: #{@id}",
            "Name: #{@name}",
            "Identiy: #{@identity}",
            "Superpowers: #{@superpowers.join(', ')}" 
        ].join(' ')
    end

    def edit(name, identity, superpowers)
        @name = name
        @identity = identity
        @superpowers = superpowers
    end

end