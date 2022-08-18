class Pet < ActiveRecord::Base
    belongs_to :adopter
    belongs_to :shelter

    def self.oldest
        Pet.maximum('age')
    end

    def self.average_age
        self.all.sum(:age) / self.all.length.to_f
    end

    def in_dog_years
        if self.species.downcase == 'dog'
            return self.age * 5
        else 
            return 'your pet is not a dog'
        end
    end

end
