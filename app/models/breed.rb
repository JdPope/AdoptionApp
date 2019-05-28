class Breed < ApplicationRecord
  has_many :dog_breeds
  has_many :dogs, through: :dog_breeds
end
