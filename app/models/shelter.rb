class Shelter < ActiveRecord::Base
    has_many :pets
    has_many :adopters, through: :pets

    def current_pets
        self.pets.find_by adopted?: false
    end

    def adopted_pets
        self.pets.find_by adopted?: true
    end
end
