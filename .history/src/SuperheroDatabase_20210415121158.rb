class SuperheroDatabase

    superheroes = []

    def self.load_database
        superheroes = YAML.load(File.read("superheroes.yml")) rescue [] 
    end

    def self.list_all
        superheroes
    end

    def self.delete_superhero_by_id(id)
        index = superheroes.index { |superhero| superhero&.id == id }
        superheroes.delete_at(index)
    end

    # save_database (to file)
    # add_superhero(Superhero)
    # find(search term) - returns
    # count
end