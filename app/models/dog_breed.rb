class DogBreed < ApplicationRecord
  belongs_to :dog
  belongs_to :breed
end
