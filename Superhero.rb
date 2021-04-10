require "yaml"

class Superhero
    attr_reader :id 
    attr_accessor :name, :identity, :superpowers, :height

    Superheroes = YAML.load(File.read("superheroes.yml"))

    # def self.load    
    #     Superheroes = YAML.load(File.read("superheroes.yml"))
    # rescue 
    #     []
    # end

    def initialize(name, identity)
        @id = Superheroes.length + 1
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
        Superheroes << self
    end

    def self.find(id)
        Superheroes.detect { |superhero| superhero.id == id }
    end

    def self.all #List all the Superheroes
        Superheroes
    end

    def self.save_to_yaml
        file = File.open("superheroes.yml", "w")
        file.write(Superheroes.to_yaml)
        file.close()
    end

    def self.number_of_instances
        Superheroes.length
    end

    def delete
        index = Superheroes.index {|superhero| superhero&.id == @id }
        Superheroes.delete_at(index)
    end
end