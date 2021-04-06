class Superhero
    attr_reader :id 
    attr_accessor :name, :identity, :superpowers, :height

    SUPERHEROES = []

    def initialize(name, identity)
        @id = SUPERHEROES.length + 1
        @name = name
        @identity = identity
        @superpowers = []
    end

    def to_s
        [
            "ID: #{@id}",
            "Name: #{@name}",
            "Identiy: #{@identity}",
            "Superpowers: #{@superpowers}" 
        ].join(' ')
    end
    
    def save
        SUPERHEROES << self
    end

    def self.find(id)
        SUPERHEROES.detect { |superhero| superhero.id == id }
    end

    def self.all #List all the superheroes
        SUPERHEROES
    end

    def self.number_of_instances
        SUPERHEROES.length
    end

    def delete
        index = SUPERHEROES.index {|superhero| superhero&.id == @id }
        SUPERHEROES.delete_at(index)
    end
end