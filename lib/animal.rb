class Animal
    attr_reader :kind, :weight, :age 

    def initialize(kind, weight, age)
        @kind = kind
        @weight =  "#{weight} pounds"
        @age = "#{age} weeks"
    end 

    def age_in_days
        age.delete(" weeks").to_i * 7
    end 

    def feed!(lbs)
        fed = weight.delete(" pounds").to_i 
        fed += lbs
        @weight = "#{fed} pounds"
    end
    
end