require './lib/animal'

class Zoo
    attr_reader :name, :street, :city, :state, :zip_code, :inventory
    def initialize(name, street, city, state, zip_code)
        @name = name
        @street = street
        @city = city
        @state = state 
        @zip_code = zip_code
        @inventory = []
    end 

    def address 
        street + " " + city + "," + " "+ state + " " + zip_code
    end 

    def animal_count
        @inventory.length
    end

    def add_animal(animal)
        @inventory << animal
    end

    def animals_older_than(x)
        animal_age =[]

        @inventory.each do |animal|
            if animal.age.delete( "weeks").to_i > x
                animal_age << animal
            end
            return animal_age.length
        end 
    end

    def total_weight_of_animals
        weight_of_all_animals = @inventory.map do |animal|
            animal.weight.delete(" pounds").to_i
        end
        return weight_of_all_animals.sum
    end 

    def details
        zoo_hash = {
            total_weight: total_weight_of_animals,
            street_address: street
    }


      


        

end