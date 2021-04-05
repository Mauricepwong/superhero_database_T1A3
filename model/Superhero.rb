class Superhero
    attr_reader :id 
    attr_accessor :name, :identity, :superpowers, :height

    SUPERHEROES = []

    def initialize(name)
        @id = SUPERHEROES.length + 1
        @name = name
        @identity = identity
        @superpowers = [] 
        @height = nil
        SUPERHEROES << self
    end

    def to_s
        [
            "ID: #{@id}",
            "Name: #{@name}",
            "Identiy: #{@identity}",
            "Height: #{@height}",
            "Superpowers: #{@superpowers}" 
        ].join(' ')
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

    def delete(id)
        SUPERHEROES.delete[id] 
    end

end