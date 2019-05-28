class Dog < ApplicationRecord
  belongs_to :owner, optional: true
  belongs_to :trainer, optional: true
  has_many :dog_breeds
  has_many :breeds, through: :dog_breeds
end
