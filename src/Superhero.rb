
class Superhero
    attr_reader :id
    attr_accessor :name, :identity, :superpowers, :height

    Superheroes = YAML.load(File.read("superheroes.yml")) rescue [] 
    
    def initialize(name, identity, superpowers)
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
   
    def self.number_of_instances
        Superheroes.length
    end

    def self.all #List all the Superheroes
        Superheroes
    end

    def save
        id = YAML.load(File.read("superheroid.yml")) rescue 1
        @id = id
        Superheroes << self
        id += 1
        file = File.open("superheroid.yml", "w")
        file.write(id.to_yaml)
        file.close()
    end

    def edit(name, identity, superpowers)
        @name = name
        @identity = identity
        @superpowers = superpowers
    end

    def self.find(id)
        Superheroes.detect { |superhero| superhero.id == id }
    end

    def self.save_to_yaml
        file = File.open("superheroes.yml", "w")
        file.write(Superheroes.to_yaml)
        file.close()
    end

    def delete
        index = Superheroes.index {|superhero| superhero&.id == @id }
        Superheroes.delete_at(index)
    end
end