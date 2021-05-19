require 'rspec'
require './lib/animal'
require './lib/zoo'
# iteration3
RSpec.describe do
    it 'is a zoo' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo).to be_a(Zoo)
        expect(zoo.street).to eq("2300 Southern Blvd")
    end

    it 'has an address' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo.address).to eq("2300 Southern Blvd Bronx, NY 10460")
    end

    it 'has an inventory' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

        expect(zoo.animal_count).to eq(0)
    end

    it 'has animals' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
        animal_1 = Animal.new("Sea Otter", 10, 25)
        animal_2 = Animal.new("Red Panda", 5, 70)
        zoo.add_animal(animal_1)
        zoo.add_animal(animal_2)

        expect(zoo.inventory).to eq([animal_1, animal_2])
        expect(zoo.animal_count).to eq(2)
    end 
end 
# interation3
RSpec.describe do
    xit 'has animals with an age' do
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
        animal_1 = Animal.new("Sea Otter", 10, 25.0)
        animal_2 = Animal.new("Red Panda", 5, 70)
        animal_3 = Animal.new("Capybara", 100, 150)
        animal_4 = Animal.new("Dolphin", 150, 200)
        zoo.add_animal(animal_1)
        zoo.add_animal(animal_2)
        zoo.add_animal(animal_3)
        zoo.add_animal(animal_4)


        expect(zoo.animals_older_than(250)).to eq(0)
        expect(zoo.animals_older_than(100)).to eq(2)
    end 

    it 'has a total weight' do 
        zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
        animal_1 = Animal.new("Sea Otter", 10, 25.0)
        animal_2 = Animal.new("Red Panda", 5, 70)
        animal_3 = Animal.new("Capybara", 100, 150)
        animal_4 = Animal.new("Dolphin", 150, 200)
        zoo.add_animal(animal_1)
        zoo.add_animal(animal_2)
        zoo.add_animal(animal_3)
        zoo.add_animal(animal_4)

        expect(zoo.total_weight_of_animals).to eq(265)
    end
end
        
        

